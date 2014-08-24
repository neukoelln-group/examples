# function without any argments
def say_hello
  puts "hello"
end

say_hello


# function with arguments
def say_something(phrase)
  puts "Ruby says: #{phrase}"
end

say_something('calling a function')


# function with default argument values
def say_something_lazy(phrase = "i don't like typing")
  puts "Ruby says (lazily): #{phrase}"
end
say_something_lazy('calling a function')
say_something_lazy


# function with return value
def add(number_1, number_2)
  number_1.to_i + number_2.to_i
end

puts add(5, 5)


# function taking an options hash
def repeat_word(options)
  options = options.merge({
    :word => 'ruby',
    :count => 5
  })

  options[:word] * options[:count]
end

puts repeat_word(:word => 'jewel', :count => 20)

