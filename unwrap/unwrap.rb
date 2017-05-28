# Class for "unwraping" commands from users
class Unwrap

  attr_accessor :first, :second, :third, :raw_inppt
  def initialize(command)
    @raw_inppt = command
    @array = command.split
    @first = @array[0]
    @second = @array[1]
    @third = @array[2]
  end
end