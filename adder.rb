require 'celluloid'
class Adder
  include Celluloid
  def initialize(numbers)
    @numbers =  numbers
  end

  def add
    sum = 0
    @numbers.each do |num|
      sum = sum + expensive_operation(num)
    end
    sum
  end

  def expensive_operation(num)
    Math.sqrt(Math.sqrt(Math.sqrt(num)))
  end
end