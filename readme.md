The [AMU LaTeX class for theses](https://github.com/SCD-Aix-Marseille-Universite/latexamu) is a full class based on KOMA-script, featuring all the mandatory frontmatter (cover, affidavit, etc.) together with many layout utilities. However, some people (*e.g.* me) use their own layout and just want to add the AMU mandatory cover. Extracting only the necessary material is the purpose of this fork. (AMU used to provided this, but inexplicably [removed their repo](https://github.com/SCD-Aix-Marseille-Universite/latexamu/commit/932ed73783eecf398449f7918023d689a52690e5).)

It contains :
- a package `titre-preamble.sty` containing preliminary work to be included in your preamble,
- a file `titre.tex` containing the cover,
- the necessary fonts and logos,
- a file `main.tex` that just produces a sample cover.

## How to use the sample `main.tex`

## How to include the cover to your thesis

## License

The material is distributed under the same conditions as [the original one](https://github.com/SCD-Aix-Marseille-Universite/latexamu). All the parts of it that are mine are distributed under the terms of the [WTFPL](http://www.wtfpl.net/).
