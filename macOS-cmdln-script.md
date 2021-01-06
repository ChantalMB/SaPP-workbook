Hello everyone! I'm Chantal and today I'll be introducing you to the basics of the command line!

So first thing we're gonna want to do is actually open the command line so you can see what it is!

To navigate the command line on macOS, we use Terminal, which is a built-in application. As you can see, I keep this in my dock just because I use it so frequently, but you can find it yourself by opening Finder, going to your applications folder, and then within that there's this folder called "utilities", and Terminal should be somewhere in here! Alternatively, you can also take the potentially simpler route of just searching for it in spotlight... hit enter and there you go! The command line!

Okay, so your command line will probably look different to mine-- because I use it so often I've customized it a bit to make it easier to use for myself-- BUT you should still have something that looks like [this], and now that we have this open, we can ask, what is *this*??? Well, what it is is in the name! The command line is a text interface for your computer, so like, your whole computer and everything it does in text form, and this means that with the command line, instead of clicking to tell it what to do, you type that command instead! In this class, we'll being mostly using the command line to navigate file directories and run code and software. A good way to make all of that less confusing is to just start with showing you some basic commands, and we'll start with the simplest task: navigating directories!

So a "directory" is essentially a folder on your computer. In Terminal, before the percent, you should see this squiggly line, and this tells you that you're in your home directory! This is where you'll start when you open Terminal, and it's where you want to be! In Finder, it corresponds to [here]. This is basically the Ultimate Folder that has all of the user's aka your "default" files, and from here you can go anywhere else on your computer.

For example, let's say I want to go over to this folder [here]. First, I'm going to type `cd` which stands for "change directory". Now this part is sort of just like you're thinking about where you want to go, then typing it out! So first I need to get to my desktop, and then I want to be in my folder for HIST3000. Note that instead of just entirely typing this out, some of it autocompleted-- to do this you just hit tab! The command line will auto complete as much as it can-- sometimes this is the full name of where you're going, but other times it will only be able to complete part of it if you have other similarly named files. For example, when I typed "hi" earlier, it only completed to "HIST" because on my desktop you [can see] I have multiple folders with names starting with HIST.

Anyways, now when I hit enter, [as you can see] I'm now there in that folder!

Also, if you ever need to go to a specific folder but are unsure of the path, just select the file in Finder, right click, then hit the "option" key and select copy pathname.

Now I'm just going to back up to my home directory real quick-- you can go back one directory by typing `..`-- since i'm 2 directories away from the home directory, I'm going to enter `cd ../..` to go back 2 directories to home.

With that, you can type `cd` then paste the pathname and it will take you to that folder or file!

As you've probably extrapolated by this point, this bit before the percent tells you the folder you're in, but you can also verify where you are by typing `pwd` which stands for "print working directory", so the directory you navigated to and are working "in". Hit enter and there you go! The file path!

Now, lets say you want to see what's actually in your directory. In Finder, you just click the folder to see everything, in the command line you type `ls`-- list!

Side note: if you ever see a /, you're in your root directory which is probably not where you want to be if you didn't actively decide to go there considering that's where your entire operating system is. No big deal, macOS makes it pretty hard to mess things up unintentionally, just `cd ~` to get back to your home directory.

For the next bit, we're just going to clean things up by typing `clear`. As you can see, all the previous commands seem to now be gone so you have a nice clean slate! Don't worry though, if you scroll up you can still see your past work from this Terminal session. Another nifty thing is that if you ever want to reuse a command you used earlier but don't feel like typing it out again, you can find it by using the up and down arrow keys!

[CUT]
Okay so as macOS users, we're lucky in the sense that we have a good package manager called homebrew that can be used in the command line, and that makes a lot of the software that we need for this course very easy and quick to install! A package manager is essentially a software that installs software-- to relate this to something you definitely know about, a package manager is like the App Store without a GUI! It has all of these apps in it, and lets you install the one you want, just with a command instead of a click.

To install homebrew, all you have to do is go to their website, copy this command, then paste it into Terminal and hit enter! I already have it installed so I won't demo this, but it really is that simple! Be warned that it may take a while to install though-- to verify it's installed, just type `brew` and see if gives you a list of possbile commands.

I WILL show you quickly how to install something using brew just so you know what a finshed install state looks like, and if you follow along with this part then you'll have a fun way to mess with your friends hehe this is inspired by everyone who doesn't use the command line asking me if I'm "hacking" whenever I open it

Anyway, to install via brew, the command will start with `brew`, summoning the package manager, IF you are installing something that has a GUI then the next word would be `cask` but we aren't doing that right now so no need to add that, then `install` indicating the action you want to perform using homebrew, and finally the name of what you want to install, which in this case is `no-more-secrets`.

Hit enter and run that and BAM, installed on your computer! This paticular program just lists all of the files of the folder you're in by scrambling the names and slowly unscrambling them to make it look like stereotypical hollywood hacking by running `ls | nms`, where ls means the same as what we learned before, and the line is a "pipe" indicating the specific thing you want to run `ls` through, which for us is `nms` aka no-more-secrets. Don't worry, you can uninstall this just as easily as installing by entering `brew uninstall no-more-secrets`

Finally, if you ever need help using a tool you installed via the command line, you can easily access a manual on it within Terminal! For example, git, a version control system we'll be using in this course has a manual that can be accessed by entering `man git`, "man" telling the computer you want a manual, and the word following it indicates what you want a manual for.

As you can see, this manual refers to further manuals that include more details, and you can access these by exiting this manual by typing q (for q) then going to that specific seciton by typing `man` and section name, so in this case gittutorials.

And that's all! hit command + q to quit the terminal! Now you know how to use the command line well enough to succeed in this class! To help you get more familiar with it, at the bottom of the written tutorial I've included links to guides about customizing the appearance of your terminal like I did! Happy learning!
