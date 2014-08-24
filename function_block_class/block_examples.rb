fruits_array = ['apples', 'pears', 'oranges', 'bananas']
drink_prices_hash = {:club_mate => 2.5, :bionade => 3, :water => 0, :thin_air => 0, :champagne => 10}


# ouput each item in the array
puts "Each item in the fruit array:"
fruits_array.each{|item| puts "A type of fruit: #{item}"}


# do the same thing, but allowing multiple lines in the block
puts "Each item in the fruit array:"
fruits_array.each do |item|
  puts "A type of fruit: #{item}"
end


# blocks also have return values
short_fruits = fruits_array.map{|item| item.length < 6}

# short_fruits will have the value ['pears']

puts "Fruits with less than 6 characters in their name: #{short_fruits.join(', ')}"



# blocks (like functions) can be used in a chain
free_drinks = drink_prices_hash.select{|name, price| price <= 0}.select{|name, price| price <= 0}

# free_drinks will have the value {:water => 0, :thin_air => 0}

puts "Drinks which cost nothing: #{free_drinks.keys.join(', ')}"
