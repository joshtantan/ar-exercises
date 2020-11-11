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

@store4 = Store.find_by(id: 4)
@store4.employees.create(first_name: "Mike", last_name: "Pence", hourly_rate: 5)
@store4.employees.create(first_name: "Ru", last_name: "Paul", hourly_rate: 20)

@store5 = Store.find_by(id: 5)
@store5.employees.create(first_name: "Gucci", last_name: "Mane", hourly_rate: 20)
@store5.employees.create(first_name: "Carrie", last_name: "Underwood", hourly_rate: 15)

@store6 = Store.find_by(id: 6)
@store6.employees.create(first_name: "Bill", last_name: "Nye", hourly_rate: 20)
@store6.employees.create(first_name: "Neil", last_name: "Tyson", hourly_rate: 20)
