require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

Employee.validates :first_name, presence: true
Employee.validates :last_name, presence: true
Employee.validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}, presence: true
Employee.validates :store_id, presence: true

Store.validates :name, length: { minimum: 3 }
Store.validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }

puts "Enter a store name: "
@store_name = gets.chomp

p Store.create(name: @store_name).errors.full_messages