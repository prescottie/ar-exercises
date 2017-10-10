require_relative '../setup'


puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnab = Store.create name:"burnabi", annual_revenue:300000, mens_apparel: true, womens_apparel: true
rich = Store.create name:"RichCity", annual_revenue:1260000, mens_apparel: false, womens_apparel: true
gas = Store.create name:"GasTown", annual_revenue:190000, mens_apparel: true, womens_apparel: false

puts Store.all.count 