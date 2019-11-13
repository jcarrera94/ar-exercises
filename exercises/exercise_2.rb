require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# id 1
@store1 = Store.find_by(id: 1)
# id 2
@store2 = Store.find_by(id: 2)

puts @store1.name

# new store1 name is Burjuanby

@store1.name = "Burjuanby"
@store1.save

puts @store1.name