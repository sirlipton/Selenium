class Name
  attr_accessor :firstName, :lastName

  def names (firstName, lastName)
    @firstName = firstName
    @lastName = lastName
  end
end

#.new is a constructor that brings the code to life
FullName = Name.new()
FullName.lastName = "Nguyen"
FullName.firstName = "John"
puts FullName.lastName
puts FullName.firstName
