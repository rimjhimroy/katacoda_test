git clone https://github.com/rimjhimroy/repeat_files.git
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh #Download miniconda installer
chmod +x Miniconda3-latest-Linux-x86_64.sh #Make it executable
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda #install miniconda
echo "export PATH=$PATH:$HOME/miniconda/bin" >> $HOME/.bashrc
source $HOME/.bashrc
conda config --set auto_activate_base False #set activation of base environment to false
conda config --add channels conda-forge
conda config --add channels bioconda
#conda update conda -y #update conda
conda create -n edta edta -y
#conda install -c bioconda ltr_retriever -y
conda init bash
docker run --rm -p 8787:8787 -v $PWD/repeat_files:/home/rstudio/repeat_files -e ROOT=TRUE -e DISABLE_AUTH=true thibautjombart/adegenet_server
