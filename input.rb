# Class for handling user inputs, greetings, first start settings, etc.
class Input

  # Init class and ask user for first input
  def initialize
    puts 'Welcome in Ruby timer app!'
    puts 'Now enter your command. If you don\'t know any. Type "help"'
    handele_input(gets.chomp)
  end

  def handele_input(input)
    path = Dir.pwd
    puts "You are here: #{path}"
    puts "You wrote #{input}"
  end
end