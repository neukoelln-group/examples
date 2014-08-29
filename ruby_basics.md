# Ruby Basics

The code examples on this page show both the code you enter into the Ruby file, and then immediately below what you'd expect to see when you run it. If you see a line start with this symbol > it means that line is the result of the piece of code above it

## Output
The most basic thing in any programming language is to make it output some information. In Ruby you do this using **puts**, short for put string. It takes whatever you give it and outputs it to the command line.
```ruby
puts "Hello, I'm some Ruby code"
> "Hello, I'm some Ruby code"
```

## Comments
Sometimes you just want to put a note to yourself (or anyone else who reads your code) to explain what something does or why you put it there. Ruby will ignore any line that starts with # even if it contains valid Ruby code

```ruby
# I'm a comment and Ruby will ignore me
# puts "I will also be ignored"
```

## Variables
Storing a value to use it again later is something you need to do all the time when writing code. These stored values are called variables, because their value can vary over time.

To create a variable in Ruby, you choose a name (made up of letters, underscores and numbers, no spaces allowed :P) and use an = sign to assign a value to it. Once you've given your variable a name, you can use it again in your code and it will keep the same value unless you assign it another one.

```ruby
my_value = 2
my_value
> 2

my_value = 2 + 2
my_value
> 4
```

**Important:** *The Ruby interpreter doesn't automatically store values between runs, so as soon as your script finishes running all the variables will be gone (unless you save them to a file, but more on that later...)*

Variables can have any value you choose to give them, but once you've assigned a value they will automatically have a type depending what you assigned.

Some example types:
```ruby
# String
"I'm a string"

# Integer - A whole number
2

# Float - A decimal number
2.75

# Array - a list containing other variables of any type
['apples', 'pears']

# Hash - a set of keys, each with an assoicated variable as the value
{:key => value}
```

Depending on the type of the variable you created, it has different functions and properties you can use to work with it.

### Strings
A String variable is a string of characters of any length from 0 upwards. You can perform basic operations on a string like reversing it, choosing a smaller part of it, or joining it together with other strings.


```ruby
my_string = "hello ruby"

my_string.reverse
> "ybur olleh"

my_string.length
> 10

# Tip: you can put any ruby code inside #{} and Ruby will 
# calculate the result and insert it in your string
puts "I say #{my_string}"
> "I say hello ruby"

```

[Everything about strings](http://www.ruby-doc.org/core-2.1.2/String.html)

### Arrays
An Array variable is just a sequential list of other variables, stored under a single variable name. An array can contain any other type of Ruby variable, including other arrays.
```ruby
my_array = ['apples', 'pears', 'oranges']

my_array.reverse
> ['oranges', 'pears', 'apples']


my_array.first
> 'apples'

my_array.last
> 'oranges'

my_array.include?('grapes')
> false
```

To access a value in an existing array, use square brackets and the number of the item you want. Ruby starts counting from 0, so the first item is number 0, the second is 1 etc.

```ruby
my_array = ['apples', 'pears', 'oranges']

my_array[0]
> 'apples'

my_array[2]
> 'oranges'

my_array[2] = 'something else'
my_array
> ['apples', 'pears', 'something else']
```

If you want to output your whole array instead of just a single item, you might find the **inspect** function helpful

```ruby
my_array = ['apples', 'pears', 'oranges']

# without .inspect
puts my_array
> apples
> pears
> oranges

# with .inspect
puts my_array.inspect
> "['apples', 'pears', 'oranges']"
```

[Everything about arrays](http://www.ruby-doc.org/core-2.1.2/Array.html)

### Hashes
A Hash variable is a set of keys, each with a value associated with it. The value can be any type of Ruby variable, including another Hash. Each key can only hold one value - setting the same key twice will replace the old value.
```ruby
my_hash = {:test_key => 'test value'}

my_hash.include?(:test_key)
> true

my_hash.merge({:another_key => 'another value'})
> {:test_key => 'test value', :another_key => 'another value'}

my_hash.keys
> [:test_key]

my_hash.values
> ['test value']
```

To access a value in an existing hash, use square brackets and the name of the key you want

```ruby
my_hash = {:test_key => 'test value', :another_key => 'another value'}

my_hash[:test_key]
> 'test value'

my_hash[:another_key]
> 'another_value'

```

[Everything about hashes](http://www.ruby-doc.org/core-2.1.2/Hash.html)
