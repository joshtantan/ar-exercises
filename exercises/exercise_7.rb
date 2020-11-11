require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

puts "Enter store name to add:"
new_store_name = gets.chomp
new_store = Store.new(name: new_store_name)
p new_store.valid?
pp new_store.errors.messages
