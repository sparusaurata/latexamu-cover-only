Aix-Marseille University's [LaTeX class for theses](https://github.com/SCD-Aix-Marseille-Universite/latexamu) is a full class based on KOMA-script, featuring AMU's mandatory frontmatter (cover, affidavit, etc.) together with many layout utilities. However, some people (*e.g.* me) use their own layout and just want to add the AMU cover. Extracting only the necessary material is the purpose of this fork. (AMU used to provide this, but inexplicably [removed their repo](https://github.com/SCD-Aix-Marseille-Universite/latexamu/commit/932ed73783eecf398449f7918023d689a52690e5).)

It contains :
- a package `titre-preamble.sty` containing preliminary work to be included in your preamble,
- a file `titre.tex` containing the cover,
- the necessary fonts and logos,
- a file `main.tex` that just produces a sample cover.

# Description of the sample `main.tex`

This sample document shows how the AMU cover can be added to a document. By default, it should be compiled by running
```sh
xelatex main.tex
```
or
```sh
latexmk
```
in the root folder of the repository. `lualatex` should also work, even though not tested.

In case you really want to use `pdflatex` (why would you?), you just need to modify `main.tex` by
- commenting the line loading `fontsetup`,
- uncommenting the block loading fonts and Unicode support for `pdflatex`.

# How to include the cover in your thesis

1. Download (or clone) this repository in the folder where you are writing your thesis.  
In case you are working in a git repository, you can also [add it as a submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).
2. In the preamble of the LaTeX source of your thesis, add
    ```tex
    \usepackage{latexamu-cover-only/titre-preamble}
    ```
    (and change the path to `titre-preamble.sty` according to your setup).  
    This should be done **after** any font declaration if you are using `fontspec` (since the package changes the default font features).  
    By default, the fonts are looked for in the folder `./latexamu-cover-only/fonts/`, starting from where your main LaTeX file is stored. If you want to explicitely specify a path to the `fonts` folder, you can use
    ```tex
    \usepackage[fontspath=./path/to/fonts/]{latexamu-cover-only/titre-preamble}
    ```
    (see `main.tex` for an example).
3. After your `\begin{document}`, add
    ```tex
    \input{latexamu-cover/titre}
    ```
    (again, adapt the path if necessary).

## License

The forked material is distributed under the same conditions as [the original one](https://github.com/SCD-Aix-Marseille-Universite/latexamu). All the parts of this repo that are mine are distributed under the terms of the [WTFPL](http://www.wtfpl.net/).
