require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def test_readers
    ages = [24, 30, 18, 20, 41]
    event = Event.new('party', ages)
    assert_equal 'party' , event.name
    assert_equal ages, event.ages
  end

  def test_max_age
    ages = [24, 30, 18, 20, 41]
    event = Event.new('party', ages)
    assert_equal 41, event.max_age
  end

  def test_min_age
    ages = [24, 30, 18, 20, 41]
    event = Event.new('party', ages)
    assert_equal 18, event.min_age
  end

  def test_average_age
    ages = [24, 30, 18, 20, 41]
    event = Event.new('party', ages)
    assert_equal 26.6, event.average_age
  end

  def test_std_dev_age
    ages = [24, 30, 18, 20, 41]
    event = Event.new('party', ages)
    assert_equal 8.28, event.standard_deviation_age
  end

end
