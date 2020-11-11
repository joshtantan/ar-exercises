require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Jeff", last_name: "Bezos", hourly_rate: 50)
@store1.employees.create(first_name: "Elon", last_name: "Musk", hourly_rate: 60)
@store2.employees.create(first_name: "Donald", last_name: "Trump", hourly_rate: 40)
@store2.employees.create(first_name: "Barack", last_name: "Obama", hourly_rate: 80)

@store4 = Store.find_by(id: 4)
@store4.employees.create(first_name: "Mike", last_name: "Pence", hourly_rate: 40)
@store4.employees.create(first_name: "James", last_name: "Charles", hourly_rate: 80)

@store5 = Store.find_by(id: 5)
@store5.employees.create(first_name: "Gucci", last_name: "Mane", hourly_rate: 80)
@store5.employees.create(first_name: "Carrie", last_name: "Underwood", hourly_rate: 60)

@store6 = Store.find_by(id: 6)
@store6.employees.create(first_name: "Bill", last_name: "Nye", hourly_rate: 80)
@store6.employees.create(first_name: "Neil", last_name: "Tyson", hourly_rate: 80)
