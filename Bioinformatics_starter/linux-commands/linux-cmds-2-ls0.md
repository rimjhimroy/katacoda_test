`ls` stands for list directory contents.  

The `ls` command displays the names of files contained within a directory, as well as any requested, associated information.

Type `ls`{{execute}} and hit enter.

Let us create six files with superhero names.
Type `touch aquaman.txt batman.txt flash.txt superman.txt wonderwoman.txt .ironman.txt`{{execute}} and press enter.
__Note:__ Don't forget to add the dot `.` in front of ironman.txt

Now type `ls`{{execute}} and hit enter.

How many files do you see? You should see only five files, although you created six.
Do you see the file `ironman.txt` file?

__Hidden Files__
Files that are named with a dot `(.)` are hidden and not shown when you run the `ls` command.
To see hidden files, we need to modify the `ls` command with some additional information. This additional information that is added to a Linux command is called an operand.

Type `ls -a`{{execute}} and press enter.
The `-a` operands will list directory entries whose names begin with a dot (.) and are hidden.
You should see six files including the `ironman.txt` file.

Another operand that is often used with the `ls` command is the `-l` operand.
The `-l` operand lists the file in long format. If the output is to a terminal, a total sum for all the file sizes is output on a line before the long listing.  

Type `ls -la`{{execute}} and press enter.
If the -l option is given, the following information is displayed for each file:
- file mode,
- number of links,
- owner name,
- group name,
- number of bytes in the file,
- abbreviated month,
- day-of-month file was last modified,
- hour file last modified,
- minute file last modified,
- and the pathname.  
In addition, for each directory whose contents are displayed, the total number of 512-byte blocks used by the files in the directory is displayed on a line by itself, immediately before the information for the files in the directory.
