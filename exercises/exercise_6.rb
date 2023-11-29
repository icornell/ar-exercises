require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Add the following code directly inside the Store model (class): has_many :employees
class Store
  has_many :employees
end
# Add the following code directly inside the Employee model (class): belongs_to :store
class Employee
  belongs_to :store
end
# Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

# Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).

@store1.employees.create(first_name: "Frodo", last_name: "Baggins", hourly_rate: 50)
@store1.employees.create(first_name: "Samwise", last_name: "Gamgee", hourly_rate: 50)
@store1.employees.create(first_name: "Peregrin", last_name: "Took", hourly_rate: 50)
@store1.employees.create(first_name: "Meriadoc", last_name: "Brandybuck", hourly_rate: 50)
@store1.employees.create(first_name: "Gandalf", last_name: "The Grey", hourly_rate: 200)


@store2.employees.create(first_name: "Thorin", last_name: "Oakenshield", hourly_rate: 200)
@store2.employees.create(first_name: "Fili", last_name: "Son of Fundin", hourly_rate: 150)
@store2.employees.create(first_name: "Dwalin", last_name: "Son of Fundin", hourly_rate: 150)
@store2.employees.create(first_name: "Gloin", last_name: "Son of Groin", hourly_rate: 150)
@store2.employees.create(first_name: "Nori", last_name: "Son of Dan", hourly_rate: 150)
@store2.employees.create(first_name: "Bofur", last_name: "Son of Bombur", hourly_rate: 150)
@store2.employees.create(first_name: "Bilbo", last_name: "Baggins", hourly_rate: 50)

