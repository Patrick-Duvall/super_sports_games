require_relative "standard_deviation"

class Event
  attr_reader :name , :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    mean(@ages)
  end

  def standard_deviation_age
    standard_deviation(@ages)
  end
end
