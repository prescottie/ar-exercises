require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
all_stores = Store.all
@all_stores_rev = all_stores.sum(:annual_revenue)
@all_stores_rev_avg = (all_stores.sum(:annual_revenue)/ all_stores.count)
@all_1M_stores = all_stores.where('annual_revenue > 1000000').count

puts "Total revenue for all stores is $#{@all_stores_rev}"
puts "Average revenue for all stores is $#{@all_stores_rev_avg}"

puts "#{@all_1M_stores} Stores generate over 1 Mil in sales"
# @count_1M_stores = @all_1M_stores.count
# puts @all_1M_stores

