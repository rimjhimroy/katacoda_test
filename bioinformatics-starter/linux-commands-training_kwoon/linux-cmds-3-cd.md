`cd` stands for Change Directory.  

Type `cd cybershaolin`{{execute}} and press enter.

What you just did was you changed your directory to the `cybershaolin` directory.

You can check by typing `pwd`{{execute}} and pressing enter.

You will now be in the `/cybershaolin` directory.

Now type `ls`{{execute}} and press enter.
You will see that there are some files related to superheroes comic companies (e.g., dc and marvel) as well as a villains file that is compressed as a tape archive (.tar file) as shown below.

`root@2c76ac044cd9:/cybershaolin# ls
superheroes_dc1.txt  superheroes_dc2.txt  superheroes_dc3.txt  superheroes_marvel.txt  villains.tar`

__cd and ../(DotDotSlash))__  
In order to go to the previous folder, you can use the shortform `../` (DotDotSlash) along with the `cd` command.  
Since you are in the `cybershaolin` directory now, you can go to the previous directory using the `cd ../` command.
