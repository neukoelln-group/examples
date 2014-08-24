# basic class
class RepeatWord
  def initialize(word, count)
    @word = word
    @count = count
  end

  def repeat
    puts @word * @count
  end
end

my_word = RepeatWord.new('test', 5)
my_word.repeat


# parent / child classes
class Animal
  def noise
    'nothing'
  end

  def make_noise
    puts "I am a #{self.class} and I say #{noise}"
  end
end

class Cow < Animal
  def noise
    'moo'
  end
end

class Pig < Animal
  def noise
    'oink'
  end
end

cow = Cow.new()
cow.make_noise

pig = Pig.new()
pig.make_noise

