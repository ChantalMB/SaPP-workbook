* Make HIST3000 folder on desktop before recording

Hello everyone! I'm Chantal and today I'll be introducing you to the basics of the command line!

So first thing we're gonna want to do is actually open the command line so you can see what it is!

To navigate the command line in Windows, you have 2 options:
1) You can use the pre-installed Windows Powershell that you can find by serching "powershell" OR
2) You can download the shiny new Windows Terminal from the Microsoft store-- it was release just last year and as you can see [place them side be side] they basically look the same by default. BUT Windows terminal has nice features that you'd find on other modern operating systems like tabbing [open tab] and the ability to customize the theme [VID: on screen note- "Customization will be featured at the end of the accompanying written tutorial!"] that can make working with it a smoother experience, SO I'll be using this for the tutorial today.

So, with all that being said, you're probably looking at your screen now like "okay but what IS THIS???"" Well, it's in the name! The command line is a text interface for your computer, meaning its like your whole computer and everything it does, typed out! When using the command line, instead of clicking to tell your computer what to do, you type what you want to do as a command instead! In this class, we'll being mostly using the command line to navigate file directories and run code and software. A good way to make all of that less confusing is to just start with showing you some basic commands, so we'll start with the simplest task: navigating directories!

A "directory" is essentially a folder on your computer. In the terminal, before the arrow, you'll see something like `C:/Users/[your-user-name]` and that means you're in your home directory which is good, because it's always where you want to start from! In the File explorer [open FE], it corresponds to [here]. This is basically the Ultimate Folder that has all of the user's aka your "default" folders, which means from here you can go anywhere else on your computer.

So, let's say I want to go over to this folder here [highlight Desktop]. First, I'm going to type `cd` which stands for "change directory". And then this next part is sort of just like, you're thinking about where you want to go then typing it out! So first I need to get to my desktop [type desktop], and then I want to be in my folder for Classes [type Classes]. Now when I hit enter, [as you can see] the file path before the arrow has changed and it now lets me know I'm in that folder!

Windows is nice for this, because if you ever need to go to a specific folder but are unsure of the path, open the folder up in File Explorer [open file explorer], highlight the contents of the address bar, copy [VID: show ctrl + c] then go back to the command line, type `cd`, and paste [VID: ctrl + p]!

Now, lets say you want to see what's actually in your directory. In File Explorer [open FE], you just click the folder to see a list of files. In the command line, to display the content of the folder aka the directory you're in, you type `ls`-- list! This is especially useful for occasions when you forget the EXACT name of the directory you need to go to, because you can just get to a point that you DO know like where we are now, and then look at the list and "ah yes that's the code for that course" then [typing] `cd ProjectNotes`!

Okay so now we're just going to clean things up by typing `clear` [enter clear] ... and now your terminal is cleared of your previous work. You are ready to start anew-- although note that this does not reset the terminal, so you'll still be in the directory you were last in. If you want to go "back" one directory, you can type `cd ..` which takes you back to Classes. If you want to go all the way back to the home directory, you can do that multiple times in a row like `cd ../..`!

If you're worried about forgetting a command you used earlier, don't let that be a reason not to clean up your workspace! You can just use [the up and down arrow keys] to scroll through a list of the commands you've previously entered!

If you're hesitant about clearing because you think you might need to reference output from earlier earlier work, like error messages or `ls` results, in the Windows Terminal specifically you can just open a new tab! Though opening a new tab IS opening a new terminal, so if you want to keep working in the same directory [highlight file path] you're going to have to `cd` into it again.

And that's all! Now you know how to use the command line well enough to succeed in this class! To help you get more familiar with Powershell, at the bottom of the written tutorial I've included some links to guides about customizing the appearance of Windows Terminal that I encourage you to check out-- if you need any extra help don't be afraid to ask in the course Discord! Happy learning!
