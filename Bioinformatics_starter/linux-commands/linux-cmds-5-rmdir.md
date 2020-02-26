`rmdir` stands for Remove directory.  

Sometimes you may want to or have to delete a directory or folder. Say you created a temporary directory called `tmp` or a top secret folder called `.secrets` that will hold some secret files for a short amount of time. Once you no longer need those files or the directory, you can delete (or remove) it. This is where the `rmdir` command can help.  

Now type `cd myGames`{{execute}} to enter into the `myGames` directory.

Once you are in the directory, if you type `ls` and press enter, you will find that the directory is empty. There are no files to list.

Let us create some files. One of the easiest ways to create some files is to use the `touch` command.

Type `touch angrybirds.txt candycrush.txt fortnite.txt halo.txt borderlands.txt`{{execute}} and press enter.

Type `ls -l`{{execute}} to make sure that those files were created.

Since you are in the `myGames` directory, type `cd ../`{{execute}} to go to its parent directory (e.g., `/`) so that you can delete the `myGames` directory that you created.  

Now type `rmdir myGames`{{execute}} and press enter.

Since you have the files that you created inside the directory, this command will fail and you will see something like  
`rmdir: failed to remove 'myGames/': Directory not empty`

To delete directory that have content inside them, you can use the `rm` command along with the operands called `-rf` which will do a recursive flush.

Try `rm -rf myGames`{{execute}} and press enter.  

__The DeathStars of the rm Commands__
Never ever, never ever, never ever run the following command   
`rm -rf *.*`  
unless you absolutely know that you are in the directory from which you want to delete ALL folders and files.   
The `*.*` here is a wildcard syntax to mean any files of any type.
