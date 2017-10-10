require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create([{first_name: "Scotty", last_name: "Hagan", hourly_rate: 2},
                          {first_name: "Spencer", last_name: "mamilton", hourly_rate: 900},
                          {first_name: "Jenny", last_name: "JLo", hourly_rate: 313},
                          {first_name: "Tasha", last_name: "URBZ", hourly_rate: 394}])

@store2.employees.create([{first_name: "Isaac", last_name: "V", hourly_rate: 23},
                          {first_name: "LL", last_name: "Cool J", hourly_rate: 100000},
                          {first_name: "Joel", last_name: "Shinness", hourly_rate: -20}])


puts "#{@store1.name} has #{@store1.employees.count} emlpoyees"
puts "#{@store2.name} has #{@store2.employees.count} emlpoyees"
