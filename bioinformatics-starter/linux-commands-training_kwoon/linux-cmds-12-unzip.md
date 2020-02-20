`unzip` stands for Unzip  

The `unzip` command is used to extract all contents of a `zipped` file.  

Since we have a zip file renamed `villains.zip` in the `villains` directory, we will navigate into the `villiains` directory and unzip the `villains.zip` file.  

Type `cd villains`{{execute}} and press enter.  
Type `unzip villains.zip`{{execute}} and press enter.     

You will see this text appear on the screen.    

`Archive:  villains.zip
  inflating: villains.txt`  

This is saying that the folder (archive) `villains.zip` is decompressing (inflating) to reveal `villains.txt`.  

Type `ls`{{execute}} to see if the `villains.txt` file is there.

__file__  
Why don't we use the `file villains.txt`{{execute}} to make sure and guarantee that this is really a text file. You should see `villains.txt: ASCII text` to show that this truly is a text file.
