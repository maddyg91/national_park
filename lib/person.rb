
class Person
attr_reader :person_details

  def initialize(person_details)
    @person_details = person_details
  end

  def name
    @person_details["name"]
  end

  def age
    @person_details["age"]
  end

  def adult?
      @person_details["age"] >= 18
  end

end
