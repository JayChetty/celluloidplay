require_relative 'summer'

class Adder
  def initialize(number)
    @number = number
  end

  def add
    start = Time.now

    mid = (@number/2).round
    sum1 = Summer.new(1..(mid-1))
    sum2 = Summer.new(mid..@number)

    part1 = sum1.future.add
    part2 = sum2.future.add
    
    sum = part1.value + part2.value

    # sum = 0
    # (1..@number).each do |num|
    #   sum = sum + Math.sqrt(Math.sqrt(Math.sqrt(num)))
    # end

    finish = Time.now
    diff = finish - start
    puts "Time taken:#{diff}"
    sum
  end
end

# s