# Building the PDF specification
The PDF is built directly from the markdown formatted specification at the top level of this directory using pandoc.

## Building
1. Ensure pandoc is installed
```
    conda install -c conda-forge pandoc
```
2. Run build_specification_pdf.

## Notes
Pandoc conversion goes via html to ensure that the html tables in the markdown document are rendered correctly.