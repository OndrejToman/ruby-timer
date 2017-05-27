# Redefine String class
class String

  # returns first letter of word
  def init
    self[0,1]
  end
end

# input string with adress to folder you want to write
print 'Yeah... Enter a dir, you want to CHECK!'
folder = String(gets.chomp)
log = Array.new

begin
  # read the contents of folder
  log = Dir.entries(folder).sort
  puts 'They have their:'

  # how many dots you want to print
  dots = 30

  # for each record do:
  log.each do |dir|

    # ignore hidden files and folders and system specific . and .. folders
    if dir != '..' && dir != '.' && dir.init != '.'

      # the final number of dots, that will be printed
      dots2 = dots - dir.length

      # finally print name of dir or file
      print "#{dir} "

      # finally print dots
      for i in 0..dots2
        print '.'
        sleep 0.01
      end

      # and check! :)
      print 'Check!'

      # line break
      puts ''

      # suspend program for one second
      sleep 1
    end
  end
rescue
  # if folder doesn't exist
  puts "What?! This is a piece of shit! Folder \"#{folder}\" doesn't exist!"
ensure
  # string = 'Good bye, I\'m Batman!'
  g = 'Good'.split
  b = 'bye,'.split
  i = 'I\'m'.split
  a = 'Batman!'.split

  # print Good bye, I'm Batman!
  g.each do |let|
    print let
    sleep 0.2
  end
  print ' '
  b.each do |let|
    print let
    sleep 0.2
  end
  print ' '
  i.each do |let|
    print let
    sleep 0.2
  end
  print ' '
  a.each do |let|
    print let
    sleep 0.2
  end
  puts ''
  puts 'If you don\'t know what\'s going on there, check this out: https://www.youtube.com/watch?v=I53HDr0-Qew '
end

# and finally The end.
