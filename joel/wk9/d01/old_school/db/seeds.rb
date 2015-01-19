# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating some Old School seeds"

School.create({
  name: "South Compton HS",
  description: "The weather is beautiful today.. Learning is happening"
})

School.create({
  name: "Chicago Southside HS",
  description: "Higher learning at its finest.. "
})

School.create({
  name: "New York Regents",
  description: "The original HS of the USA.." 
})