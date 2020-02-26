`cp` stands for Copy.  

This command copies files to other locations.  

The `cp` command works very similarly to the `mv` command it moves the file to another location but keeps the previous file so it duplicates it.  

Let us copy a file.  

- Type `cp scientists.txt famous_scientists.txt`{{execute}} This is copying the `scientists.txt` & renaming it to `famous_scientists.txt` in the same directory. 
- Now type `ls`{{execute}} You should see two files the `scientists.txt` & the `famous_scientists.txt` there  
- After that type `cp famous_scientists.txt famous_scientists`{{execute}} We are copying the `.txt` file to another directory
- Next Type `ls`{{execute}} and press Enter. There should be a `famous_scientists.txt` in that directory.
- Now type `Education is the most powerful weapon you can use to change the world. - Mark Twain`
- Press `Ctrl + Z` if you are using a Windows machine or `Cmd + Z` if you are using a Mac machine

What this `cat > edu_quote.txt` command does is, it reads (or concatenates) the contents (in this case the quote that you typed in) and writes (>) it into a file called `edu_quote.txt`

To read the contents of a file and print it to the terminal, you can use the `cat` command.

Now type `cat edu_quotes.txt` (this time without the `>` sign between the word cat and edu_quotes.txt)
You should see the quote that you typed in displayed on the screen.

Note: The `cat` command is used extensively in reading and managing files in Linux.
