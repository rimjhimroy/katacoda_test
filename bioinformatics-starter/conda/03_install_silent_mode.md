

### Installing in silent mode

To run the [silent installation](https://conda.io/docs/glossary.html#silent-mode-glossary) of Anaconda for macOS or Linux, specify the -b and -p arguments of the bash installer. The following arguments are supported:

- `-b` Batch mode with no PATH modifications to `~/.bashrc`. Assumes that you agree to the license agreement. Does not edit the `.bashrc` or `.bash_profile` files.
- `-p` Installation prefix/path.
- `-f` Force installation even if prefix -p already exists.

EXAMPLE:

```bash
wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh -O ~/anaconda3.sh
bash ~/anaconda3.sh -b -p $HOME/anaconda3
export PATH="$HOME/anaconda3/bin:$PATH"
```

NOTE: This sets the PATH only for the current session, not permanently. Trying to use conda when conda is not in your PATH causes errors such as “command not found.”

In each new bash session, before using conda, set the PATH and run the activation scripts of your conda packages by running:

```bash
source $HOME/anaconda3/bin/activate
```

NOTE: Replace `$HOME/anaconda3/bin/activate` with the path to the activate script in your conda installation.

To set the PATH permanently, you can add a line to your `.bashrc` file. However, this makes it possible to use conda without running the activation scripts of your conda packages, which may produce errors.

EXAMPLE:

```bash
export PATH="$HOME/anaconda3/bin:$PATH" >> ~/.bashrc
```
