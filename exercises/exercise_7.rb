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
puts "Enter a Store Name"
store_name = gets.chomp
puts store_name

begin
  Store.create!(:name => store_name)
rescue => exception
  puts exception
end