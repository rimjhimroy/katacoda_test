
## Set up channels

After installing conda you will need to add the bioconda channel as well as the other channels bioconda depends on. **It is important to add them in this order** so that the priority is set correctly (that is, conda-forge is highest priority).

The conda-forge channel contains many general-purpose packages not already found in the defaults channel.

```bash
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
```
run the following:-

`
conda config --add channels defaults; \
conda config --add channels bioconda; \
conda config --add channels conda-forge;

`{{execute}}
