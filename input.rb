# Class for handling user inputs, greetings, first start settings, etc.
class Input

  # Init class and ask user for first input
  def initialize
    puts 'Welcome in Ruby timer app!'
    puts 'Now enter your command. If you don\'t know any. Type "help"'
    handele_input(gets.chomp)
  end

  def handele_input(input)
    command = Unwrap.new(input)
    if command.first == 'are_you_the_batman?'
      require_relative 'batcave/check'
    else
      puts "First command: #{command.first}"
      puts "Second command: #{command.second}"
      puts "Third command: #{command.third}"
    end
  end
end