{{toc}}

# VertexFinder

The package maintainer is Joshua Spitz joshua.spitz@yale.edu.

## HarrisVertexFinder

This algorithm is designed to find (weak) vertices from hits after deconvolution and hit finding. One-sided Gaussian shading in the wire direction is employed in order to make true vertices unambiguous and to reduce noise.

The algorithm is based on *C. Harris and M. Stephens (1988). “A combined corner and edge detector” (PDF). Proceedings of the 4th Alvey Vision Conference. pp. 147-151*.

## VertexMatch

This algorithm is designed to match vertices found with the a dedicated vertex finder (HarrisVertexFinder) and those found with the HoughLineFinder. A weak vertex is a vertex that has been found using a dedicated vertex finding algorithm only. A strong vertex is a vertex that has been found using a dedicated vertex finding algorithm and the HoughLineFinder algorithm.
