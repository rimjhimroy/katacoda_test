`file` stands for File  (Determination)

The `file` command helps to determine the type of Files.

Because we know that the villains file is in the `cybershaolin` directory. You have to run `cd ../`{{execute}} to go back to the `cybershaolin` folder since you are inside the `villains` folder.  

Now we learned earlier that in order to read the contents of a file, we can use the `cat` command.  

Type `cat .villains.txt`{{execute}} and press enter, once you are in the `cybershaolin` folder.  

You will notice that some text is displayed on the screen but it is not humanly readable (kinda looks garbled).  

Aha, the villains have not only hidden the file, but also tried to hide (obfuscate) the contents of the file by changing the type of the file.  

A `.txt` file should be able to be opened by the `cat` command, but since this did not work as expected for us, let us determine the type of the file using the `file` command.

Type `file .villains.txt`{{execute}} and press enter.  

You will notice that the file type is a `zip` (compressed) file, with a `.txt` file extension.

Next we will need to `unzip` this file to see what the file contains, but before we can do that, we need to rename the file from the `.txt` extension to the `.zip` extension.

__Rename using Move (mv)__
To rename the file we will interestingly use the `mv` command. The `mv` command that you learned earlier can be used for two reasons.
- Move source(s) to directory and
- Rename the Source to Destination

Type `mv .villains.txt villains.zip`{{execute}} and press enter to rename the file from .villains.txt to .villains.zip.  

Technically what the `mv` command did in this case was it renamed the `villains.txt` file to `village.zip` file.  

While we are renaming the `villains.txt` file we might as well move it to the `villains` folder.  

Type `mv villains.zip villains/`{{execute}} and press enter.
