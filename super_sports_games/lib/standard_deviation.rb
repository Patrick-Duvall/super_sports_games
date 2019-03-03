require 'minitest/autorun'
require 'minitest/pride'


ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

def mean(array)
  array.sum/ array.size.to_f
end

def standard_deviation(array)
  m = mean(array)
  variance = array.map{ |num| ( m - num) ** 2 }.sum
  standard_deviation = Math.sqrt(variance/(array.size))
   standard_deviation.round(2)
end
