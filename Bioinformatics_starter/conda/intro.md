# Anaconda, Conda and Bioconda
A quick guide to setting up Anaconda, conda and Bioconda for basic NGS (DNAseq) workflows

### Bioconda
**Bioconda** is a channel for the [conda](http://conda.pydata.org/docs/intro.html) package manager **specializing in bioinformatics software**.
We will use Bioconda to install most of the software we need for our bioinformatics pipelines.

>Bioconda requires the **conda** package manager to be installed. If you have an Anaconda Python installation, you already have it. Otherwise, the best way to install it is with the [Anaconda](https://docs.anaconda.com/) or [Miniconda](http://conda.pydata.org/miniconda.html) package. The Python 3 version is recommended.

  See also  
  - [What’s the difference between Anaconda, conda, and Miniconda?](https://bioconda.github.io/faqs.html#conda-anaconda-minconda)
  - The conda [FAQs](http://conda.pydata.org/docs/faq.html) explain how it’s easy to use with existing Python installations.

Bioconda consists of:

- a [repository of recipes](https://github.com/bioconda/bioconda-recipes) hosted on GitHub
- a [build system](https://github.com/bioconda/bioconda-utils) that turns these recipes into conda packages
- a [repository of more than 3000 bioinformatics packages](https://anaconda.org/bioconda/) ready to use with `condainstall`
- Over 250 contributors that add, modify, update and maintain the recipes

The conda package manager makes installing software a vastly more streamlined process. Conda is a combination of other package managers you may have encountered, such as pip, CPAN, CRAN, Bioconductor, apt-get, and homebrew. Conda is both language- and OS-agnostic, and can be used to install C/C++, Fortran, Go, R, Python, Java etc programs on Linux, Mac OSX, and Windows.

Conda allows separation of packages into repositories, or channels. The main defaults channel has a large number of common packages. Users can add additional channels from which to install software packages not available in the defaults channel. Bioconda is one such channel specializing in bioinformatics software.

When using Bioconda please **cite our article** [Grüning, Björn, Ryan Dale, Andreas Sjödin, Brad A. Chapman, Jillian Rowe, Christopher H. Tomkins-Tinch, Renan Valieris, the Bioconda Team, and Johannes Köster. 2018. “Bioconda: Sustainable and Comprehensive Software Distribution for the Life Sciences”. Nature Methods, 2018](https://doi.org/10.1038/s41592-018-0046-7).

Bioconda has been acknowledged by NATURE in their [technology blog](http://blogs.nature.com/naturejobs/2017/11/03/techblog-bioconda-promises-to-ease-bioinformatics-software-installation-woes/).

Each package added to Bioconda also has a corresponding Docker [BioContainer](https://biocontainers.pro/)automatically created and uploaded to Quay.io.

**Browse packages in the Bioconda channel:** [Available packages](https://bioconda.github.io/recipes.html#recipes)

**Browse BioContainer packages:** [Biocontainers Registry UI](https://biocontainers.pro/registry/#/)

Bioconda is a derivative mark of Anaconda ®, a trademark of Anaconda, Inc registered in the U.S. and other countries. Anaconda, Inc. grants permission of the derivative use but is not associated with Bioconda.

The Bioconda channel is sponsored by [Anaconda, Inc](https://www.anaconda.com/) in the form of providing unlimited (in time and space) storage. Bioconda is supported by [Circle CI](https://circleci.com/) via an open source plan including free Linux and MacOS builds.

### Conda

*Package, dependency and environment management for any language—Python, R, Ruby, Lua, Scala, Java, JavaScript, C/ C++, FORTRAN*

Conda is an open source package management system and environment management system that runs on Windows, macOS and Linux. Conda quickly installs, runs and updates packages and their dependencies. Conda easily creates, saves, loads and switches between environments on your local computer. It was created for Python programs, but it can package and distribute software for any language.

Conda as a package manager helps you find and install packages. If you need a package that requires a different version of Python, you do not need to switch to a different environment manager, because conda is also an environment manager. With just a few commands, you can set up a totally separate environment to run that different version of Python, while continuing to run your usual version of Python in your normal environment.

In its default configuration, conda can install and manage the thousand packages at repo.continuum.io that are built, reviewed and maintained by Anaconda®.

Conda can be combined with continuous integration systems such as Travis CI and AppVeyor to provide frequent, automated testing of your code.

The conda package and environment manager is included in all versions of [Anaconda](https://conda.io/docs/glossary.html#anaconda-glossary)®, [Miniconda](https://conda.io/docs/glossary.html#miniconda-glossary)and [Anaconda Repository](https://docs.continuum.io/anaconda-repository/). Conda is also included in [Anaconda Enterprise](https://www.anaconda.com/enterprise/) , which provides on-site enterprise package and environment management for Python, R, Node.js, Java and other application stacks. Conda is also available on PyPI, although that approach may not be as up to date.

### Anaconda

Anaconda® is a package manager, an environment manager, a Python distribution, and a collection of [over 1,500+ open source packages](https://docs.anaconda.com/anaconda/packages/pkg-docs/). Anaconda is free and easy to install, and it offers [free community support](https://groups.google.com/a/anaconda.com/forum/?fromgroups#!forum/anaconda).

# Credits
Adapted and taken from  
- Anaconda: http://docs.anaconda.com/anaconda/install/linux/  
- Conda:https://conda.io/docs/index.html  
- Bioconda: https://bioconda.github.io/  

********************

This material is provided as part of the Genomic Medicine MSc jointly run by St Georges University, London and King's College London.
