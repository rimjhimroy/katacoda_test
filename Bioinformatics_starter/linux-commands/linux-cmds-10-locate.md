`locate` stands for Locate  

The message in the `README.txt` file suggested that the file may be hidden. It also stated that a dot means a lot so let us try to search for the villains fill with a dot in front.

You can use the `locate` command if you know the name of the file or directory that you are trying to find (locate).  

You can try to type `locate .villains`{{execute}} and press enter to find the hidden villains list.  

You should see that a file called `.villains.txt` is hidden in the `/cybershaolin` directory as shown below.  
`root@be4435989d81:/cybershaolin/villains# locate villains
/cybershaolin/.villains.txt
/cybershaolin/villains.tar`  

__Hidden Files__ (using ls -a)
Files that are named with a dot `(.)` are hidden and not shown when you run the `ls` command.  
To see hidden files, we need to modify the `ls` command with some additional information. This additional information that is added to a Linux command is called an operand.  

Type `ls -a` and press enter.
The `-a` operands will list directory entries whose names begin with a dot (.) and are hidden.  
