require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@sum = Store.sum("annual_revenue")
puts "Total annual rev: #{@sum}"

@avg = Store.average("annual_revenue")
puts "Avg: #{@avg}"

@over_M = Store.where(["annual_revenue >= ?", 1000000]).count
puts "Big ballers: #{@over_M}"