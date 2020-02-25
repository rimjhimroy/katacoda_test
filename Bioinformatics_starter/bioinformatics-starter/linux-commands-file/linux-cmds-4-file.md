The `file` command is used to determine the type of file.  

The file command can be very useful if you need to find out the file is whether it is a text file a zip file or even a malware file.  

Go to the `home` directory if not already there by typing `cd home`{{execute}}  

Type `file edu_quote.txt`{{execute}} and press enter.  

You should see this output.  
`edu_quote.txt: UTF-8 Unicode text`

This is saying that it is a normal `UTF-8` text file.

Let's try and read the `famous_scientists.txt`.  

Type `cat famous_scientists.txt`{{execute}}  

The text seems to look all garbled like, `PC??N?1U^ofamous_scientists.txtUT	?=2]?=2]ux
                                                  %?1?@
?H??o5??                                               {??_??P"Q;dE???I?f4?!??z????҈?
        I?[x?
             &+?3q??lK???C?T?S?ʮ???Y+7PC??N?1U^o??famous_scientists.txtUT?=2]ux
                                                                               PK[?`  

Why don't we check what type of file this is.

Type `file famous_scientists.txt`{{execute}}  

We can see,  
`famous_scientists.txt: Zip archive data, at least v2.0 to extract`  
This means it is not actually a `.txt` file it is a `.zip`.

Remember the `file` command it can come in handy when trying to see what a file really is.
