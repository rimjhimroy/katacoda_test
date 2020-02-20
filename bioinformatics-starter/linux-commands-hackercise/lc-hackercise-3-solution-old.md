Solution - Dragon Warrior Linux Command Hackercise

The solution to the hackercise is given below, but we highly recommend that you try to 'hack' and solve it with the knowledge of Linux Commands that you have gained. If you are stuck, you can obviously look at the command(s) to run, but first try on your own.

Let us start by finding out where we are by using the __Print Working Directory__ command.  
`pwd`{{execute}}  
You will find out that you are in the `/` directory.

Now let us list the contents of this `/` directory using the __list__ command.  
`ls`{{execute}}
You notice that there is a file called `starting_scroll` in that directory along with many other directories as shown below.
`bin   dev  home  lib64  mnt  proc  run   srv              sys  training_hall  var
boot  etc  lib   media  opt  root  sbin  starting_scroll  tmp  usr`  

That looks like a good starting point. Let us read the contents of that file using the __cat__ command as shown below.
`cat starting_scroll`{{execute}}
When you read the contents of the `starting_scroll`, you will see a welcome message (as shown below) with the objective of this hackercise, which is to find the legendary Linux Command Dragon scroll. The message also instructs you to start by first locate Tiger.
`Welcome to the Cyber Dragon Warrior Linux Command Hackercise!
You are the Dragon Warrior and the only way to unlock your full potential is by finding the Legendary Linux Command Dragon Scroll. You might want to start by locating Tiger. She knows where the Dragon Scroll is kept, but she may not be too happy to see you.`

Let us try and find out where Tiger is by using the __locate__ command.
`locate Tiger`{{execute}}
You will see the following message displayed on the screen
`locate: warning: database '/var/cache/locate/locatedb' is more than 8 days old (actual age is 17.8 days)
/home/Tiger
/home/Tiger/message_from_tiger`
You may see a warning message saying that the locatedb database has not been updated in the past 8 days. You can safely ignore this warning. You will also see that the `Tiger` directory is in the `/home` directory and inside that "Tiger" directory is a file named "message_from_tiger".  

Now let us navigate into the "Tiger" directory using the
__cd__ (Change Directory) command as show below.
`cd home/Tiger`{{execute}}

Your prompt should change to something that should have the words "/home/Tiger" after the ":" (colon) as shown below.  
`root@7c9d6efb85b8:/home/Tiger#`
You can also use the __pwd__ command to find out if you are in the "Tiger" command.

Once you are in the "Tiger" Directory, list the contents of that directory using the __ls__ command as shown below.
Type `ls`{{execute}} and press enter.

You should see  the "message_from_tiger" file. To read the contents of the "message_from_tiger" file, you can use the __cat__  command.

Type `cat message_from_tiger`{{execute}} and press enter.
You should see some instructions as shown below.
`AHHHHHHH!!! You are disturbing my meditation.
If it's the Dragon Scroll you're looking for,
I don't know where it is now.
I left it in the training hall (training_hall) since
we were cleaning the Hall of Warriors.
So check there!
Oh and by the way there is a bunch of stuff in there
so you may want to specifically search for 'scroll'`

We should try and locate the "training_hall" next, which we can do using the following command.
Type `locate training_hall`{{execute}} and press enter.
You should see a warning about the cache being old and it actual age, that you can ignore. Then you will see that that is a directory call "training_hall" and a file name "training_equipment" within that directory.
`locate: warning: database '/var/cache/locate/locatedb' is more than 8 days old (actual age is 28.9 days)
/training_hall
/training_hall/training_equipment`

Let us navigate into the "training_hall" directory using the __cd__ command as shown below.  
Type `cd ../../training_hall`{{execute}} and press enter.

We could open and read the contents of the "training_equipment" file using the __cat__ command, but if you do that, you will notice that the "training_equipment" has in it a lot of weapons types and belts. You can go through each item in that list to find the scroll, but that could take time.
As the instructions were to specifically search for 'scroll', we can use the __grep__ command to search for the word 'scroll' inside the 'training_equipment' file.
Type `grep 'scroll' training_equipment`{{execute}} and press enter.
The search results will show that a 'fake scroll' is found and the instructions are to 'Visit Monkey' as shown below.
`fake scroll:Visit Monkey`

So let us __locate__ the Monkey directory next.
Type `locate Monkey`{{execute}} and press enter.
You will see the cache warning that you can ignore. You will also see that the 'Monkey' directory is in the home folder and within it is a file called 'message_from_monkey' as shown below.
`locate: warning: database '/var/cache/locate/locatedb' is more than 8 days old (actual age is 29.0 days)
/home/Monkey
/home/Monkey/message_from_monkey`

Navigate to the 'Monkey' directory using the __cd__ command.
Type `cd ../home/Monkey/`{{execute}} and press enter.

Once you are in the 'Monkey' directory, listing the contents of that directory using the __ls__ command (as shown below) will show that there is a file called 'message_from_monkey' in there.
Type `ls`{{execute}} and press enter.

To read the contents of the 'message_from_monkey' file, use the __cat__ command.
Type `cat message_from_monkey`{{execute}} and press enter.
You will see instructions suggesting that you go to 'Mantis' directory to find the real scroll.  
`HAHA! You found my fake scroll.
I took the real one and gave it to Mantis.
Why don't you look there?
Be warned, he is very organized.`

Let us navigate to the 'Mantis' directory. Note since you are in the 'Monkey', you can use __locate__ to find out where the 'Mantis' directory is. But by now you should have realized that the directory we are looking for is usually under the '/home/'' folder, we can use the '../' (dot dot slash) syntax to go to the parent directory (in this case the 'home' directory) and then navigate it to the 'Mantis' directory.
Type `cd ../Mantis/`{{execute}} and press enter.

List the contents of the 'Mantis' directory
Type `ls`{{execute}} and press enter.

You will find two files - one named 'jars.tar' and the other named 'message_from_mantis' in that directory (as shown below).
`jars.tar  message_from_mantis`

First open the message using the __cat__ command.
Type `cat message_from_mantis`{{execute}} and press enter.
You will see the following when you open that file.
`Hey what's up, Dragon Warrior?
You must be looking for the Dragon Scroll.
I know it is  in this jar, but it seems to be sealed shut.
See if you can bust it open.`

To open (unarchive) and extract the contents of the 'jars.tar' file,
Type `tar -xvzf jars.tar`{{execute}} and press enter.
You will notice that the contents of the 'jars.tar' file are extracted into a 'jars' folder and within that folder you have two other tar files named 'acupuncture.jar' and 'scrolls.tar' as shown below
`jars/
jars/acupuncture.tar
jars/scrolls.tar`

Let us navigate into the 'jars/' directory.
`cd jars/`{{execute}}

Listing the contents of that directory will show that you have two other Tape ARchive (tar) files in it namely 'acupuncture.tar' and 'scrolls.tar'.
Type `ls`{{execute}} and press enter.

Just as we did for the 'jars.tar', we need to open (unarchive) and extract the contents of the 'scrolls.tar' file,
Type `tar -xvzf scrolls.tar`{{execute}} and press enter.

A directory called 'scrolls' will be extracted as shown below.
`scrolls/
scrolls/note_from_viper`

Navigate into the 'scrolls' directory using the __cd__ command as shown below.
Type `cd scrolls`{{execute}} and press enter.

Now list the contents of this directory using the __ls__ command.
Type `ls`{{execute}} and press enter.

Read the contents of the 'note_from_viper' file using the __cat__ command.
Type `cat note_from_viper`{{execute}} and press enter.

You will see the following instructions.
`If you are reading this, I'm so sorry.
I took the Dragon Scroll from Mantis without asking.
I was in such a rush.
Anyway if you are looking for it, then please come to my room.`

Since the note is from 'Viper' and we are in the 'scrolls' directory, within the 'jars' directory, we have to navigate back to the 'home' directory, that is 3 levels above. This means that we can use the ../ notation three times from where we are to navigate to the 'Viper' directory.
Type `cd ../../../Viper`{{execute}} and press enter.

Once you are in the 'Viper' directory, list the contents of the directory.
Type `ls`{{execute}} and press enter.

You will see that there is a file called 'message_from_viper' in that directory along with another directory called 'scrolls' in that directory.
Open and read the contents of that file using the __cat__ command.
Type `cat message_from_viper`{{execute}} and press enter.
You will see the following information in that file.
`Hi Dragon Warrior.
How are you doi... Oh my gosh I just realized,
I accidentally took the dragon scroll without returning it.
Let's see, I know it is the 3rd scroll I got today.
Don't look at the name of the scrolls,
but the time at which I got them.`

Navigate into the 'scrolls' directory using the __cd__ command.
`cd scrolls`{{execute}}

Since the instructions suggested to look for the 3rd scroll, it is better to list the files using the '-la' switch when using the __ls__ command.
Type `ls -la`{{execute}} and press enter.

You will notice that there are a series of files numbered as shown below
`total 40
drwxr-xr-x 2 root root 4096 Jun 25  2019 .
drwxr-xr-x 3 root root 4096 Jul  6 02:50 ..
-rw-r--r-- 3 root root   13 Jul  6 02:09 scroll_1.txt
-rw-r--r-- 3 root root   13 Jul  6 02:13 scroll_2.txt
-rw-r--r-- 3 root root   52 Jul  6 02:15 scroll_3.txt
-rw-r--r-- 3 root root   13 Jul  6 02:12 scroll_4.txt
-rw-r--r-- 3 root root   13 Jul  6 02:14 scroll_5.txt
-rw-r--r-- 3 root root   13 Jul  6 02:16 scroll_6.txt
-rw-r--r-- 3 root root  108 Jul  6 02:11 scroll_7.txt
-rw-r--r-- 3 root root   13 Jul  6 02:10 scroll_9.txt`

If you open the 'scrolls_3.txt' file using the __cat__ command, you will find that, that scroll is not the correct scroll and you will be instructed to look at the timestamp.

Look again at the list of files by issuing the 'ls -la' command again and you will notice that scroll_7.txt is the scroll which was created as the 3rd file in that list, with a timestamp of 02:11.

To open and read the contents of that file,
Type `cat scroll_7.txt`{{execute}} and press enter.

You will see the following instructions
`Hey Viper I saw that you left the Dragon Scroll out so I thought
I would return it. Check with me. - Crane`

Navigate to the 'Crane' directory using the __cd__ command.  
Type `cd ../../Crane`{{execute}} and press enter.

List the contents of that directory using the __ls__ command.
Type `ls`{{execute}} and press enter.
You will notice that there is a file called 'message_from_crane.txt' directory and a directory called scrolls.

First read the contents of that file using the __cat__
Type `cat message_from_crane.txt`{{execute}} and press enter.
You will see the following message.
`Oh my gosh.
You came just in time.
I was just sorting out my scrolls and
I accidentally dropped the Dragon Scroll
in a pile full of identical scrolls.
Please help find the diff(erence) between the 3 scrolls
to find the real one.`

Navigate into the 'scrolls' folder using the __cd__ command.
Type `cd scrolls`{{execute}} and press enter.

When you list the contents of that directory you will find that there are the three files as the message indicated.
Type `ls`{{execute}} and press enter.

To find out the real scroll file, you would need to find the difference between these three files.
We will use the __diff3__ command to find the difference between these three files, since opening each file and reading the contents would be very hard to spot the difference between these files.

Type `diff3 scroll_1.txt scroll_2.txt scroll_3.txt`{{execute}} and press enter.
You will see the following
`====2
1:32a
3:32a
2:33c
   ^`^|Your final test is to find the Dragon Scroll that Shifu has hidden somewhere. ^`^}`

This indicates that the file that is different is the second file (===2) and it is on line 33 (2:33) that file is different.
It also show how that file is different from the other files.
The line that is in this second file that is not in the others will inform you that the Dragon Scroll has been hidden by Shifu somewhere.

Let us __locate__ Shifu to find the Dragon Scroll.  
Type `locate Shifu`{{execute}} and press enter.
You will see that Shifu has hidden the dragon scroll (renamed alphanumerically) in a hidden directory called .Shifu located in the /root directory (as shown below)
`/root/.Shifu
/root/.Shifu/the_dragon_scr011.txt`

Navigate into the .Shifu directory using the __cd__ command.
Type `cd /root/.Shifu/`{{execute}} and press enter.

Then list the contents of the directory using the __ls__ command.
Type `ls`{{execute}} and press enter.

You will see that the The Dragon Scroll file is in that directory. It is however named the_dragon_scr011.txt (note the 'oll' is actually '011')

You found The Dragon Scroll.
Now there is one thing left to do. Open and read the contents of The Dragon Scroll.

Type `cat the_dragon_scr011.txt`{{execute}} and press enter.
You should see the following

`Congratulations Cyber Dragon Warrior!
You have found the Legendary Linux Commands Dragon Scroll.
Now you have unlocked your true hacker syntax potential.
Always remember to use your cyber skills for the good of humanity.
Shifu Reuben.

And one more thing, if you have a twitter account then send
Shifu Reuben (@RAPst4r) a tweet saying that you are a
Linux Command Cyber Dragon Warrior.`

You have successful completed the Dragon Warrior Linux Command Hackercise.
