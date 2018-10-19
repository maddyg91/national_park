require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

 class PersonTest < Minitest::Test

  def test_person_exists
    charlie = Person.new({"name" => "Charlie", "age" => 18})

    assert_instance_of Person, charlie
  end

  def test_person_has_a_name
    charlie = Person.new({"name" => "Charlie", "age" => 18})

    assert_equal "Charlie", charlie.name
  end

  def test_person_has_age
    charlie = Person.new({"name" => "Charlie", "age" => 18})

    assert_equal 18, charlie.age
  end

  def test_person_is_an_adult
    charlie = Person.new({"name" => "Charlie", "age" => 18})

    assert_equal true, charlie.adult?

  end


 end
