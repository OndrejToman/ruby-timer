# Class for managing files
class FilesManager

  attr_reader :file, :absolute_adress
  def initialize(name_of_file)
    @name = name_of_file
    @path = Dir.pwd
    @absolute_adress = "#{@path}/#{@name}"
    @file = File.read(@absolute_adress) if File.exist?(@absolute_adress)
  end

  def exist?
    if File.file?(@absolute_adress)
      true
    else
      false
    end
  end
end