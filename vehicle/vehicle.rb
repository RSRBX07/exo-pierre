# require 'file'

class Counter
  def add_one

  end

  def value
    File.open "./tmp/counter.txt", "r" do |counter_file|
      counter_file.each_line {|line| line }
    end
  end
end
class Vehicle
  attr_reader :position
  attr_reader :out_of_order

  def initialize
    puts "Im starting initialization my instance"
    @out_of_order = false
    puts "Im finishing initialization my instance"
    Counter.new.add_one
  end

  def self.count
    Counter.new.value
  end


  def move(destination)
    @position = destination
  end

  

end
