# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

p myArray.map { |v| v * 3 }
p myArray.each_with_object([]) { |value, array| array << value * 3 }
p myArray.reduce([]) { |array, value| array << value * 3 }
p myArray.inject([]) { |array, value| array << value * 3 }


# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"

def word_capitilizer string
  p string.split(" ").map{ |v| v.capitalize }.join(" ")
end

word_capitilizer sentence
# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

def disemvowel string
  p string.delete "aeiouAEIOU"
  # need to implement y-case
end

disemvowel no_vowels
# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example

  def initialize day
    @day = day.capitalize
  end

  def say_hi
    if @day == "Friday"
      puts "TGIF!"
    elsif @day == "Monday"
      puts "Its monday again"
    else
      puts "another day"
    end
  end

end

ex0 = Example.new "thursday"
ex1 = Example.new "monday"
ex2 = Example.new "friday"
ex3 = Example.new "garbage"
ex4 = Example.new "Monday or Tuesday"
# ex5 = Example.new 56789
# ex0.SayHi
# ex1.SayHi
# ex2.SayHi
# ex3.SayHi
# ex4.SayHi

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal
  def initialize color
    @color = color
  end

  def legs
    4
  end
end

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.

rand_animal = Animal.new "brown"
p rand_animal.legs
