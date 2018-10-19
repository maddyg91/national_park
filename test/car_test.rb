require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/person'

class CarTest < Minitest::Test
  def test_it_exists
    car = Car.new

    assert_instance_of Car, car
  end

  def test_passeger_array_is_empty
    car = Car.new

    assert_equal [], car.passengers
  end

  def test_you_can_add_passengers
    car = Car.new
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    jude = Person.new({"name" => "Jude", "age" => 20})
    taylor = Person.new({"name" => "Taylor", "age" => 12})
    car.add_passenger(charlie)
    car.add_passenger(jude)
    car.add_passenger(taylor)

    assert_equal [charlie, jude, taylor], car.passengers
  end

  def test_number_of_adults
    car = Car.new
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    jude = Person.new({"name" => "Jude", "age" => 20})
    taylor = Person.new({"name" => "Taylor", "age" => 12})
    car.add_passenger(charlie)
    car.add_passenger(jude)
    car.add_passenger(taylor)

    assert_equal 2, car.num_adults
  end
end
