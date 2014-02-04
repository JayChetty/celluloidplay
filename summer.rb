require 'celluloid'
class Summer
  include Celluloid
  def initialize(numbers)
    @numbers =  numbers
  end

  def add
    sum = 0
    @numbers.each do |num|
      sum = sum + Math.sqrt(Math.sqrt(Math.sqrt(num)))
    end
    sum
  end
end