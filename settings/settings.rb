require 'rubygems'
require 'json'

# Class handling settings
class Settings

  attr_accessor :nickname, :language, :default_project, :config_file
  def initialize
    # Init steps:
    # 1. Check if there is config file. If not, ask user to create config
    # 2. Check if there is any users. If not, ask user for create one
    # 3. Check if user have any projects. If not, store
    # times to predefined project (general or no-project), decide later.
    # If all steps above are completed, run program.

    @config_file = FilesManager.new('settings/config.json')
    if @config_file.exist?
      my_hash = JSON.parse(@config_file.file)
      @nickname = my_hash['name']
      @language = my_hash['language']
      @default_project = my_hash['def_project']
    else
      first_config
    end
  end

  def first_config
    puts 'Welcome! It looks you run this app for first time!'
    puts 'Enter your nickname:'
    @nickname = gets.chomp
    puts 'Enter your language:'
    @language = gets.chomp
    puts 'Name your default project:'
    puts 'It can be something like: general, no-project, etc...'
    @default_project = gets.chomp
    save_config
    first_hello
  end

  # Save new config to config file
  def save_config
    hash = { name: @nickname, language: @language, def_project: @default_project }
    open('settings/config.json', 'a') do |file|
      file.puts JSON.generate(hash)
    end
  end

  # Say hello for the 1st time!
  def first_hello
    puts '-------------------------------------------------------------------'
    puts "Welcome again #{@nickname}. Now you can start using Ruby timer app."
    puts 'By the way. Your config file is stored there:'
    puts @config_file.absolute_adress
    puts '-------------------------------------------------------------------'
  end
end