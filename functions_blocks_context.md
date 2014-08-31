# Functions

If you need to do the same thing more than once in your code, it's usually quicker and easier to if you write a function. A function is a named bit of Ruby code which can be called at any time once you have defined it. A function always returns a variable (*the return value*) or nil if you don't return anything.

```ruby
def my_function
  'This is the return value'
end

puts my_function()
> 'This is the return value'

def i_return_nil
end

puts i_return_nil()
>
```

You can also pass variables to the code in your function. Variables you pass to functions are called the *arguments* of the function. This is useful when the return value of your function, or even what your function actually does, depends on the inputs.

```ruby
def add_two_numbers(first_number, second_number)
  first_number + second_number
end

puts add_two_numbers(5, 2)
> 7
```

You can set default values for any of the arguments to your function. If you set a default, then that value will be used if no value is provided when the function is called.

```ruby
def say_something(something = 'I have nothing to say')
  puts "Ruby says #{something}"
end

say_something()
> Ruby says I have nothing to say

say_something('test')
> Ruby says test
```

If you need more than about 2 or 3 arguments to your function, it's usually easier to take one argument and make it be a Hash. You can use the .merge() function of the Hash to set default values.

```ruby
def get_final_score(options = {})
  options = {
    :multiplier => 1,
    :base_score => 0,
    :level_bonus => 100
  }.merge(options)
  
  (options[:base_score] * options[:multiplier]) + options[:level_bonus]
end

# if you call a function without arguments, you can leave off the () if you want
puts get_final_score
> 100

puts get_final_score({:base_score => 10, :multiplier => 10})
> 200
```

# Blocks

Blocks are similar to functions - they are bits of re-usable Ruby code which have arguments passed to them. The difference is that instead of passing the arguments yourself, they are passed by a piece of container code (usually a function). They are used everywhere in Ruby for different purposes, but especially for drawing information from existing variables, or making complex code easier to work with.

```ruby
['apples', 'pears', 'oranges'].each do |fruit|
  puts "I eat #{fruit}"
end
> I eat apples
> I eat pears
> I eat oranges

# you can put blocks on a single line if they are simple
puts [1, 760, 10, 5, 200].select{|number| number > 10}.inspect
> [760, 200]

# or on multiple lines - this select does exactly the
# same as the one above
selected = [1, 760, 10, 5, 200].select do |number|
  number > 10
end
puts selected.inspect
> [760, 200]

{:test => 'value', :other => 'something'}.each{|key, value| puts "key: #{key} value: #{value}"}
> key: test, value: value
> key: other, value: something
```

## A Note About Context

If you create a named variable inside a function or block, you won't be able to access it from outside. Everything you define outside is still accessible. Because functions are designed to be reused, you should avoid using variables from outside if you can - it can often lead to confusing problems. Using outside variables from inside a block is less bad, but it often means there is a better way to solve the problem.

```ruby
outside = 'from the outside'

def my_function
  inside = 'from the inside'
  puts "#{outside} #{inside}"
end

my_function()
> from the inside, from the outside

# This will cause an error because the inside variable was only defined
# within the context of the function
puts inside

fruits = ['apple', 'pear']
results = []

input.each{|fruit| results.push("#{fruit} is a fruit")}
puts results.inspect
['apple is a fruit', 'pear is a fruit']
```






