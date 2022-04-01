# The central repositories for core LArSoft

Central repositories contain the reference copy of the software. A release is made by extracting tagged code from the central repositories and creating a set of relocatable ups products. There is a one-to-one mapping of product to repository. Each repository and the associated product contain LArSoft software components that are within the same layer of functionality. All LArSoft repositories are found in the [LArSoft github organization](https://github.com/LArSoft)

<table>
<tbody>
<tr class="odd">
<td style="text-align: center;">*Product /<br />
repository name*</td>
<td><strong>Reference repository url</strong></td>
</tr>
<tr class="even">
<td style="text-align: center;">Framework independent repositories</td>
<td></td>
</tr>
<tr class="odd">
<td style="text-align: center;">larcoreobj</td>
<td>https://github.com/LArSoft/larcoreobj</td>
</tr>
<tr class="even">
<td style="text-align: center;">larcorealg</td>
<td>https://github.com/LArSoft/larcorealg</td>
</tr>
<tr class="odd">
<td style="text-align: center;">lardataobj</td>
<td>https://github.com/LArSoft/lardataobj</td>
</tr>
<tr class="even">
<td style="text-align: center;">lardataalg</td>
<td>https://github.com/LArSoft/lardataalg</td>
</tr>
<tr class="odd">
<td style="text-align: center;">larsoftobj</td>
<td>https://github.com/LArSoft/larsoftobj<br />
(A product used to set up larcoreobj, larcorealg, lardataobj, and lardataalg with a single command.)</td>
</tr>
<tr class="even">
<td style="text-align: center;">Framework dependent repositories</td>
<td></td>
</tr>
<tr class="odd">
<td style="text-align: center;">larcore</td>
<td>https://github.com/LArSoft/larcore</td>
</tr>
<tr class="even">
<td style="text-align: center;">lardata</td>
<td>https://github.com/LArSoft/lardata</td>
</tr>
<tr class="odd">
<td style="text-align: center;">larevt</td>
<td>https://github.com/LArSoft/larevt</td>
</tr>
<tr class="even">
<td style="text-align: center;">larsim</td>
<td>https://github.com/LArSoft/larsim</td>
</tr>
<tr class="odd">
<td style="text-align: center;">larreco</td>
<td>https://github.com/LArSoft/larreco</td>
</tr>
<tr class="even">
<td style="text-align: center;">larana</td>
<td>https://github.com/LArSoft/larana</td>
</tr>
<tr class="odd">
<td style="text-align: center;">lareventdisplay</td>
<td>https://github.com/LArSoft/lareventdisplay</td>
</tr>
<tr class="even">
<td style="text-align: center;">larexamples</td>
<td>https://github.com/LArSoft/larexamples</td>
</tr>
<tr class="odd">
<td style="text-align: center;">larpandora</td>
<td>https://github.com/LArSoft/larpandora</td>
</tr>
<tr class="even">
<td style="text-align: center;">larsoft</td>
<td>https://github.com/LArSoft/larsoft<br />
(A product used to set up the others with a single command.)</td>
</tr>
</tbody>
</table>

Although you can use git clone to download a copy of each repository to your local area, additional steps are needed to use, build or develop the software. Go back to Step 1 under [Using LArSoft](Using_LArSoft) for more information.

In addition to the above repositories, there is an external product `larsoft_data` that contains certain data files that were previously stored in `svn` in locations that were included in `FW_SEARCH_PATH`. Setting up the `larsoft` product will set up `larsoft_data` and make the appropriate additions to `FW_SEARCH_PATH`.

The [nutools suite](https://github.com/NuSoftHEP) contains code that is used by LArSoft, NOvA, and some other neutrino experiments. More information about the nutools suite can be found here: https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki.
