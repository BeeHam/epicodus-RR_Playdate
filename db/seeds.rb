# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Plan.create(name: 'Quick Fix', price: 5, time: '7 minutes')
Plan.create(name: 'The Full Meow', price: 20, time: '31 minutes')
Plan.create(name: 'The Full Meow (includes min. of one "Sandpaper Kiss")', price: 50, time: '32 minutes')
Plan.create(name: 'Jack Bauer Special', price: 100, time: '24 hours')
