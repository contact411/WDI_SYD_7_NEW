# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Artist.create({
  name: "Pearl Jam",
  hometown: "Seattle",
  bio: "Bonded by their flannel.. The sings songs about life and other stuff.",
  label: "Capitol Records"
  })

  Artist.create({
  name: "Motley Crue",
  hometown: "Los Angeles",
  bio: "A band that sings about girls and has the hair to match... They drink.",
  label: "Elektra Records"
  })

  Artist.create({
  name: "2 Pac",
  hometown: "Oakland",
  bio: "This dude could rap.. A real storyteller. Believe dat!",
  label: "Capitol Records"
  })