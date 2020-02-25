git clone https://github.com/rimjhimroy/plastid_sequence_analysis.git
docker run --rm -p 8787:8787 -v $PWD/r-more-files:/home/rstudio/r-more-files -e ROOT=TRUE -e DISABLE_AUTH=true rocker/tidyverse
