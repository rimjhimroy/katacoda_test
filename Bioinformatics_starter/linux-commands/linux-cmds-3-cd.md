`cd` stands for Change Directory.  

Type `cd .secrets`{{execute}} and press enter.
NOTE: Don't forget the dot `(.)` in front of the word `secrets`.

What you just did was you changed your directory to the .secrets directory. You can check by typing `pwd`{{execute}} and pressing enter.

You will now be in the `/.secrets` directory.

Now type `ls`{{execute}} and press enter and you will see that there is a text file in there called `TopSecret`.

__cd and ../(DotDotSlash))__  
In order to go to the previous folder, you can use the shortform `../` (DotDotSlash) along with the `cd` command.  
Since you are in the `.secrets` directory now, you can go to the previous directory using the `cd ../` command.

Type `cd ../`{{execute}} and you will find yourself back at the `/` directory.
By typing `ls -la`{{execute}}, you will find that you are indeed in the `/` directory.
