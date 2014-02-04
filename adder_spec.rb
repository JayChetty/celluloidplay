require 'rspec'
require_relative 'adder'

describe Adder do
  it "should add element of an array" do
    adder = Adder.new(10000000)
    adder.add.should be_close(66657266.402171 , 0.05)
  end

  # it "should add element of an array" do
  #   adder = Adder.new((1..6).to_a)
  #   adder.add.should == 21
  # end  
end