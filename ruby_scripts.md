# Running Ruby Scripts

You have two options when it comes to using ruby:

* IRB (Interactive Ruby)
* The Ruby interpreter

## IRB

The interactive ruby command lets you type in Ruby code one line at a time. When you finish typing out some code and press enter, IRB will run the code and show you the result. IRB just runs standard Ruby code, so you can do anything with it that you can do with the Ruby interpreter.


```ruby
irb

irb(main):001:0> 2 + 2
=> 4

irb(main):002:0> ['oranges', 'apples', 'pears'].push("plumbs")
=> ["oranges", "apples", "pears", "plumbs"]

```

IRB is useful for quickly testing things out, but soon you start to need longer scripts that you can save and reuse.

## The Ruby Interpreter

The Ruby interpreter reads a Ruby file and runs the code it finds inside line-by-line. If you create a file called **test.rb** and put this code inside it:

```ruby
puts "Hello I am the Ruby interpreter :)"
```

Then type this into [your terminal](#the-command-line)

```
ruby test.rb
```

You should see this

```
ruby test.rb
Hello I am the Ruby interpreter :)
```

## The Command Line

The Ruby language is itself a computer program. It only reads code from files and runs it, so it doesn't display any windows or other visual things unless your code tells it to. Basic programs like this are run from the command line, which is a bit like IRB - you type in commands line-by-line and it runs them. If you're using Mac or Linux, you might have seen or used the command line before, but on Windows it's very rarely used.

On Mac, Linux and Windows, the terminal only knows how to do three things:

1. Running programs (like the Ruby interpreter)
2. Changing between folders
3. Listing the contents of a folder

The command line starts within a specific folder - it should show you which one it's currently in. To get from there to the folder containing your Ruby script, you need to use the **cd** (change directory) command. Once you're in the correct folder

### Mac / Linux
If you open a terminal, the command line should start in your home folder. If you saved your **test.rb** file in a folder called Code/ruby stuff in your home folder, type:

```
cd Code/ruby\ stuff
ruby test.rb

```

The backslash is there because the command line treats spaces as separators unless they have a backslash before them e.g. it knows **ruby** is the command and **test.rb** is the file because there's a space between them

### Windows
If you saved your **test.rb** file in a folder called Code on your C: drive, type:
```
c:
cd Code
ruby test.rb
```

#### The Tab Key
On all these operating systems, you may find the tab key helpful because it auto-completes what you're typing. This is especially useful for files or folders with lots of spaces in them. If you type the first few letters and press tab, the command line will try and guess the rest, based on the names of the files in the current directory.

In the example above, where **test.rb** is in Code/ruby stuff:
```
cd Co<press tab now>

leads to

cd Code/

type some more and press tab again

cd Code/ru<press tab now>

leads to

cd Code/ruby\ stuff

```