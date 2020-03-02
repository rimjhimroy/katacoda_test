git clone https://github.com/rimjhimroy/repeat_files.git
docker pull kapeel/edta
docker run --rm -p 8787:8787 -v $PWD/repeat_files:/home/rstudio/repeat_files -e ROOT=TRUE -e DISABLE_AUTH=true thibautjombart/adegenet_server
