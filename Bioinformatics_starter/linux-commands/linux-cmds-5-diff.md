`diff` or `diff3` stands for Difference.  

The `diff` command compares two files line by line. The `diff3` command compares three files line by line.   

Type `ls`{{execute}} and press enter.  

You see that there are the a few text (.txt) files and the folders that you created.   

We need to move the files into the respective directories, meaning the `superheroes_dc` file need to be moved into the `dc` folder and the `superheroes_marvel` file need to be moved into the `marvel` folder.  

But wait, there are three `superheroes_dc` text files. So which of these files is the correct file that we need to move into the `dc` directory.

One way we can find out about each of these files is look into the files using the `cat` command, but that would take time. So we can use the `diff` or `diff3` command.  

Type `diff3 superheroes_dc1.txt superheroes_dc2.txt superheroes_dc3.txt`{{execute}} and press enter.  

You will see the contents of the three files that are different from each other line by line.  
The first file has the word 'Flash' misspelled as 'F|ash' (note the second letter is a pipe character and not a lowercase 'L').    
The third files has the word 'Batmans' and not 'Batman'.    
The second file is the only file that has the names of the DC  superheroes, correctly spelled.  

So we will move the `superheroes_dc2.txt` into the `dc` folder and the `superheroes_marvel.txt` into the `marvel` folder, but first let us remove the two incorrect files.  
