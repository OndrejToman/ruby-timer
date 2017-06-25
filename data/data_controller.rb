require 'sqlite3'

# Handle operations with database
class DataController

  attr_accessor :database
  def initialize
    # First of all, test if database file exist or not
    load_database
  end

  def load_database
    file = FilesManager.new('data/data.db')
    if file.exist?
      @database_file = file
      @database = SQLite3::Database.new 'data/data.db'

      puts 'Database file exist!'
    else
      raise 'Critical error. No database file!'
    end
  end

  def db_insert(table, values)
    {
        'one' => 1,
        'two' => 2,
    }.each do |pair|
      @database.execute 'insert into numbers values ( ?, ? )', pair
    end
  end

  def db_delete()

  end

  def db_edit()

  end

  # Select database
  # table -> from which table you want to select
  # condition -> (WHERE). If condition is empty, method will select all rows
  def db_select(table, condition)
    if condition != ''
      @database.execute("select * from #{table}") do |row|
        puts row
      end
    else
      @database.execute("select * from times where #{condition}") do |row|
        puts row
      end
    end
  end
end