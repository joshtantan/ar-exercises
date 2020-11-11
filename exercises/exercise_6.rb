require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Jeff", last_name: "Bezos", hourly_rate: 10)
@store1.employees.create(first_name: "Elon", last_name: "Musk", hourly_rate: 15)
@store2.employees.create(first_name: "Donald", last_name: "Trump", hourly_rate: 5)
@store2.employees.create(first_name: "Barack", last_name: "Obama", hourly_rate: 20)
pp Store.all
# @store3 = Store.find_by(id: 3)
# @store4 = Store
