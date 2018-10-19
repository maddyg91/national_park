require 'pry'
class Car
  attr_reader :passengers

  def initialize
    @passengers = []
  end

  def add_passenger(person)
    @passengers << person
  end

  def num_adults
    @passengers.find_all do |passenger|
     passenger.adult?
   end.count
  end
end
