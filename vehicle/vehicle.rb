# require 'file'

class Counter
  def add_one
    new_val = value + 1 
    File.open "./tmp/counter.txt", "w" do |counter_file|
      counter_file.write new_val
    end
  end

  def value
    File.open "./tmp/counter.txt", "r" do |counter_file|
      counter_file.each_line {|line| return line.to_i }
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
