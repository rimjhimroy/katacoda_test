`cat` stands for Concatenate.  

It is the command that is used to concatenate (read and adds) and print the contents of a file.

The cat utility reads files sequentially, writing them to the standard output (terminal).

You can also use the `cat` command to create a file.

To create a file, follow the steps as listed below.
We are going to create a file called `edu_quote.txt`

- Type `cat > edu_quote.txt`{{execute}} and press Enter.
- Now type `Education is the most powerful weapon you can use to change the world. - Mark Twain`
- Press `Ctrl + Z` if you are using a Windows machine or `Cmd + Z` if you are using a Mac machine

What this `cat > edu_quote.txt` command does is, it reads (or concatenates) the contents (in this case the quote that you typed in) and writes (>) it into a file called `edu_quote.txt`

To read the contents of a file and print it to the terminal, you can use the `cat` command.

Now type `cat edu_quotes.txt` (this time without the `>` sign between the word cat and edu_quotes.txt)
You should see the quote that you typed in displayed on the screen.

Note: The `cat` command is used extensively in reading and managing files in Linux.
