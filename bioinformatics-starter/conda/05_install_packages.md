
## Installing bioinformatic packages and software

[Browse the packages](https://bioconda.github.io/recipes.html#recipes) to see what’s available.

Bioconda is now enabled, so any packages on the bioconda channel can be installed into the current conda environment:

`conda install bwa`{{execute}}

Or a new environment can be created:

`conda create -n aligners bwa bowtie hisat star`{{execute}}

### [Conda environments](https://conda.io/docs/user-guide/concepts.html#id2)

A conda environment is a directory that contains a specific collection of conda packages that you have installed. For example, you may have one environment with NumPy 1.7 and its dependencies, and another environment with NumPy 1.6 for legacy testing. If you change one environment, your other environments are not affected. You can easily activate or deactivate environments, which is how you switch between them. You can also share your environment with someone by giving them a copy of your `environment.yaml` file. For more information, see [Managing environments](https://conda.io/docs/user-guide/tasks/manage-environments.html).
