class Counter
end
class Vehicle
  attr_reader :position
  attr_reader :out_of_order

  # return the number of existing objects (in mermory)
  # open irb
  # > Vehicle.count
  # # => 0
  # > Vehicle.new
  # > Vehicle.count
  # 1
  def self.count

  end

  def initialize
    puts "Im starting initialization my instance"
    @out_of_order = false
    puts "Im finishing initialization my instance"
  end


  def move(destination)
    @position = destination
  end

  

end
