git clone https://github.com/rimjhimroy/plastid_sequence_analysis.git
docker run --rm -p 8787:8787 -v $PWD/plastid_sequence_analysis:/home/rstudio/plastid_sequence_analysis -e ROOT=TRUE -e DISABLE_AUTH=true rocker/tidyverse
