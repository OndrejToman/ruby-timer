require 'sqlite3'

# Handle operations with database
class DataController
  def initialize
    # First of all, test if database file exist or not
    load_database
  end

  def load_database
    file = FilesManager.new('data/data.db')
    if file.exist?
      @database_file = file
      puts 'Database file exist!'
    else
      raise 'Critical error. No database file!'
    end
  end
end