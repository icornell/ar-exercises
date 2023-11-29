require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# # Your code goes here ...
# 1. Add validations to two models to enforce the following business rules:
#     Employees must always have a first name present
#     Employees must always have a last name present
#     Employees have a hourly_rate that is a number (integer) between 40 and 200
#     Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
#     Stores must always have a name that is a minimum of 3 characters
#     Stores have an annual_revenue that is a number (integer) that must be 0 or more
#     BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates :store, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  validate :must_carry_apparel 

  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end


# 2. Ask the user for a store name (store it in a variable)
puts "Please enter a store name now"
store_name = gets.chomp

# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
new_store = Store.new(name: store_name)

# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record. 
if new_store.save
  puts "Store created successfully!"
else
  puts "Error(s) occurred:"
  new_store.errors.full_messages.each do |error_message|
    puts error_message
  end
end
