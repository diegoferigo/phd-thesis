# classicthesis-uom

**Unofficial Ph.D. thesis template for the University of Manchester.**

This template is based on [amiede/classicthesis][classicthesis] and includes modifications to make it compatible with
the [policy][uom_policy_06_22] of the University of Manchester.
The template is optimized for an electronic submission of the default format (not the alternative [journal format][journal_format]).

You can find the official thesis template in [Overleaf][uom_template_overleaf].

[classicthesis]: https://bitbucket.org/amiede/classicthesis
[journal_format]: https://www.bmh.manchester.ac.uk/doctoral-academy/essential-information/thesis-submission/alternative-format/
[uom_policy_06_22]: https://github.com/diegoferigo/classicthesis-uom/files/10042961/Presentation.of.Theses.Policy.PGR.FINAL.June.2022.pdf
[uom_template_overleaf]: https://www.overleaf.com/latex/templates/university-of-manchester-phd-thesis-and-continuation-reports/hgngpshkptbd

## Usage

### Import in Overleaf

1. Create a new repository from the template
1. In Overleaf, import a new project from GitHub selecting the newly created repository
1. By time to time, manually sync the Overleaf project with GitHub to update the git repository

### Local usage on Ubuntu

1. Create a new repository from the template
1. Clone locally the newly created repository
1. Install the dependencies with:
   ```bash
   sudo apt-get update
   sudo apt-get install texlive-full latexmk
   ```
1. Compile the LaTeX sources with:
   ```bash
   latexmk -pdf thesis
   ```
1. Open the resulting `thesis.pdf`

## CI/CD

This repository also includes a Continuous Integration (CI) and Continuous Delivery (CD) [pipeline][ci_cd_pipeline].

- **CI:** a new build is triggered by any push and pull request event. In case of success, the PDF is available as artifact.
- **CD:** when a new tag is pushed to the repository, a new draft release is automatically created with the PDF file.

[ci_cd_pipeline]: ./.github/workflows/latex.yml

## Contributing

Pull requests are welcome.
