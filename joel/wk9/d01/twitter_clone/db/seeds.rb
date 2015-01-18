# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating some seed statuses"

Status.create({
  username: "JoelHampton",
  content: "The weather is beautiful today.."
})

Status.create({
  username: "CrazyGuy",
  content: "Can't wait for tonights concert.."
})

Status.create({
  username: "FunMaster",
  content: "Looks like its going to rain.." 
})

