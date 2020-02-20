`rm` stands Remove.  

To remove the `superheroes_dc1.txt` file and the `superheroes_dc3.txt` file, type `rm superheroes_dc1.txt && rm superheroes_dc3.txt`{{execute}} and press enter.

NOTE: To remove a directory, you will use the `rmdir` command. If there are files in the directory that you are trying to delete, then your `rmdir` command will fail and you will see something like  
`rmdir: failed to remove 'myGames/': Directory not empty`

To delete a directory that has content inside it, you can use the `rm` command along with the operands called `-rf` which will do a forcefully (-f) remove (rm) the listed directories and their contents recursively.

__The DeathStars of the rm Commands__
Never ever, never ever, never ever run the following command   
`rm -rf *.*`  
unless you absolutely know that you are in the directory from which you want to delete ALL folders and files.   
The `*.*` here is a wildcard syntax to mean any files of any type.
