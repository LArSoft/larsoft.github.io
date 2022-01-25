# Which types should go in my C function arguments?

The following apply to pure functions. If you are dealing with class methods, some points might be different.

## Decorators: pointers, references, constant references

So, you need to have a function that takes a vector of real numbers and a flag, and produces a different vector.  
The safest and most efficient way to implement this is:

    <code class="cpp">std::vector<float> fillRedOrBlack(std::vector<float> const&amp; v, bool red);</code>

  
that gets used as:

    <code class="cpp">
    std::vector<float> sourceVector;
    // ... put some data in sourceVector
    std::vector<float> filledVector = fillRedOrBlack(sourceVector, false);
    </code>

The guiding principle is to do what is most efficient. In most cases, copying data is inefficient, and the constant reference is the way to avoid the copy.  
When you specify an argument *by value* in the function signature, you are asking for a copy of that argument.  
When a (constant) reference is used instead, what gets copied under the hood is not the object itself but just a pointer to it. So the constant reference is more efficient as long as the data itself is not larger than a pointer. For reference: a pointer is 8 bytes (in 64-bit architectures), no fundamental type is larger than that.

Why not:

-   `std::vector<float> v`? this would copy the input vector in a new vector called `v`, while with the reference `sourceVector` is used directly (the reference is like a pointer that tells the function where to find the data). Why waste time and memory doing a copy[^1], when the original one is perfectly good already?
-   `std::vector<float>&amp; v`? this would allow us to change `v` and therefore `sourceVector`, which is fine if we need to; but since we know that this is not supposed to happen, we tell the compiler. In this way:
    -   the compiler can generate better code, knowing that we can't modify the values in the vector
    -   if we attempt to change it, the compiler knows we did not expect it and will stop us from making that mistake
    -   if the caller itself has a vector that is constant, it can use it with this function (imagine `sourceVector` being constant)
    -   in multi-threading execution, many functions will be able to share the same `sourceVector` without overhead for synchronisation (thread A waiting for thread B to finish writing into `sourceVector` before using it, etc.)
-   `std::vector<float> const* v`? this would have the same efficiency as the reference, but it would allow `v` to be invalid (that is, a null pointer, or just a pointer to a random area); since our function always needs a valid vector, there is no reason to allow for a null pointer… and there is never a good reason to allow for a wrong pointer anyway
-   `bool const&amp; red`? constant reference would probably work too, but why waste time and memory, when a copy is perfectly good already? Hmmm… just wait a moment!!  
    The thing is, `bool` is a fundamental type that fits in a small memory cell (it uses 1 byte), while the reference, being a pointer, uses 4 or 8 (likely the latter in all the machines you are using); so the copy is fast, and cheaper than the pointer (1 byte vs. 8). And finally, the processor does not need to follow the pointer each time it uses the variable, since it has a copy of its value ready. This is true also for the vector, but much less relevant because this additional time is often less that the actual operation on the vector, and the cost for copying the vector easily hides the gain of the local copy.
-   `std::vector<float>&amp; result` as an argument, instead of returning a `std::vector<float>`? again, the reference would work; in this case, since the result is well defined, returning it allows the compiler to apply an important optimisation (sometimes called *Return Value Optimization*). If we read the example line where we use the function, it appears that result is copied into `filledVector`. But unless the function is crafted to prevent it, the compiler won't create a new vector for a result at all, and will instead use `filledVector` directly all the time. On the other end, with the reference, the caller must create a vector first (which is fairly cheap, to be true) and the function has to `clear()` it because who knows what garbage there could be in there. So, the return value wins on points. If we had multiple results, we might reconsider.
-   `std::vector<float>&amp;` instead of `std::vector<float>` as a return value? that would be plain wrong, since the function would return a reference to a local variable and immediately after, that variable would be destroyed leaving you with a broken `filledVector` reference. Just don't.
-   `std::vector<float>*` (returning a new vector) instead of `std::vector<float>` as a return value? there are many reasons, but in short: nothing in this is more convenient, cheaper and more efficient than letting the Return Value Optimization take its course
-   `std::vector<float>&amp;&amp;` instead of `std::vector<float>` as a return value? while this would avoid the copy to `filledVector`:  
    \*# the Return Value Optimization is still better, since there is no move: there is just one vector  
    \*# if the compiler decided it can't use RVO, the function return value is a temporary that would trigger moving operations if available anyway  
    \*# there might be some chance that returning a R-value reference would confuse the compiler into thinking that RVO doesn't apply, and we would lose it

If you have questions or comments, “let me know”: Gianluca Petrillo!

[^1]: Copying a vector means: ask the operating system for a new memory area large enough to fit the data, and copying the data itself. The operating system can take any time to get that memory. It might need to make room for it by moving other data to disk (slooooow!), and even when it does not, it has to find a suitable area and store the necessary information to be able to release it later on.
