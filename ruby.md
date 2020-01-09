# ASSESSMENT 4: INTRO TO RUBY
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.   

1. In what ways are JavaScript and Ruby similar? In what ways are they different?

  Your answer:
    Both are object oriented (meaning they lump data and functionality together), but Ruby is maximally object oriented (kinda an object extremist really) as literally everything is an object. Ruby is a more abstract language meaning (simplistically) we can do more work with less lines of code. Both languages have powerful frameworks that can be used to offload certain types of tasks/"work" away from the programmer. Javascript was developed with primarily the "front-end" work of the internet in mind, whereas Ruby was developed with mostly "back-end" in mind (though the many frameworks and tools created have blurred those initial ideas and expanded the problem-space of both languages).

  Researched answer:
    Above +
    In terms of Performance: JavaScript is more than 20 times faster than Ruby in certain cases due to its highly optimized engine. [Relative to Javascript] Ruby is very slow in the Performance...
    Source: https://www.educba.com/javascript-vs-ruby/

2. What is a hash?

  Your answer:
    A hash is a set of key-value pairs. You can think of an array as a hash where the "key" is the index number.

  Researched answer:
    A Hash is a collection of key-value pairs like this: "employee" = > "salary". It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.
    SOURCE: https://www.tutorialspoint.com/ruby/ruby_hashes.htm

3. What is the testing framework used in Ruby? Describe the process of setting up the testing environment.

  Your answer:
    Ruby uses rspec for testing. It is best practice to make tests and code modules as discrete as possible (each new code component gets their own file + test file).

  Researched answer:
    <!-- below is copied from https://rspec.info/ except brackets are mine -->

    step1: To kick things off, install RSpec and run rspec --init to set up your project to use RSpec.

    step2: Start with a very simple example [i.e. test] that expresses some basic desired behaviour. [THAT LOGICALLY SHOULD BE IMPLEMENTED FIRST IN YOUR PROGRAM]

    step3: Run the example [i.e. test] and watch it fail.

    step4: Implement that basic behaviour...

    step5: Run the example [i.e. test] and bask in the joy that is green.

    [step6: Repeat steps 2-5 with behaviours that logically should be next in your program. Stop when your program is complete. 😉]

    source: https://rspec.info/


4. Name three possible relationships between objects?

  Your answer:
    my first thought was parent, child(inherits from parent), non-relational (which is itself a type of relationship). But then I thought that is-a, has-a, has-many is obviously what you are looking for.

  Researched answer:
    I hope the above is what you were looking for. I had a heck of a time finding somewhere online that detailed this in a straightforward way.

    has_one
    belong_to

5. What is an instance variable? How is it different from other variables in Ruby?

  Your answer:
    uhm, a variable?

  Researched answer:
    In the Ruby programming language, an instance variable is a type of variable which starts with an @ symbol. An instance variable is used as part of Object-Oriented Programming (OOP) to give objects their own private space to store data. source: https://www.rubyguides.com/2019/07/ruby-instance-variables/

    [seems to me kinda like "let" in JS as it helps define scope]

6. Ruby has a great community and tons of free resources to help you learn. [Here](https://www.ruby-lang.org/en/documentation/)is a list of great resources. Below are a few popular ones:
- [Interactive Ruby Tutorial](http://tryruby.org/levels/1/challenges/0)
- [Why's (poigniant) Guide to Ruby](http://poignant.guide/book/chapter-1.html): comics, anecdotes, and microscopic canaries
- [Ruby in 20 Min](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Ruby Style Guide](https://rubystyle.guide/)

Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Ruby:

1) instance methods! I can use the instance_methods method took look at all of them-- so beautiful. But also use .instance_methods(false) to get the ancestor methods outta the way.

2) I can check if an object responds to a method by using .respond_to?

3) attr_accessor :name [<-- YOUR INSTANCE VARIABLE HERE]
  defines two new methods for us, name to get the value and name= to set it.

4) "In Ruby, anything on a line after a hash mark is a comment and is ignored by the interpreter. The first line of the file is a special case, and under a Unix-like operating system tells the shell how to run the file. The rest of the comments are there just for clarity."

5) if __FILE__ == $0
  __FILE__ is the magic variable that contains the name of the current file. $0 is the name of the file used to start the program. This check says “If this is the main file being used…” This allows a file to be used as a library, and not to execute code in that context, but if the file is being used as an executable, then execute that code.


7. STRETCH: What are blocks, procs, and lambdas?

  Your answer:
    uhm, no idea.

  Researched answer:
    Ruby blocks are little anonymous functions that can be passed into methods. Blocks are enclosed in a do / end statement or between brackets {}, and they can have multiple arguments. The argument names are defined between two pipe | characters. A Ruby block is useful because it allows you to save a bit of logic (code) & use it later.

    A lambda is a way to define a block & its parameters with some special syntax. You can save this lambda into a variable for later use. Defining a lambda won’t run the code inside it, just like defining a method won’t run the method, you need to use the call method for that. There are 4 ways to call a lambda (.call, .(), [], .===)

    ex1: block_name_variable = -> { #block that does something  }
    ex2: block_name_variable = lambda { puts "This is a lambda" }

    Lambdas can also take arguments, here is an example:

      times_two = ->(x) { x * 2 }
      times_two.call(10)
      OUTPUT: 20

    If you pass the wrong number of arguments to a lambda, it will raise an exception, just like a regular method.


    Procs are a very similar concept to lambdas. One of the differences is how you create them. Procs are created using Proc.new {YOUR BLOCK HERE} like you would instantiate any new object of from a class blueprint, but one that takes a block as an argument/ parameter.

    There is no dedicated Lambda class. A lambda is just a special Proc object. If you take a look at the instance methods from Proc, you will notice there is a lambda? method.

    A key difference between procs & lambdas is how they react to a return statement. Another difference between procs & lambdas is how they react to a return statement.

    Further, procs don’t care about the correct number of arguments, while lambdas will raise an exception.

    source: https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/
