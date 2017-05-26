# Class for managing files
class FilesManager
  def initialize(name)
    @name = name
  end

  def open_file
    if exist_file
      @file = File.new('name')
      return @file
    else
      return false
    end
  end

  # Finds if file exists or not
  # Exist => return TRUE
  # DOesn't exist => return FALSE
  def exist_file
    if File.exist?(@name)
      return true
    else
      return false
    end
  end
end