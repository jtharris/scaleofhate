# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

List.create({name: 'foods', items: [{name: 'milk'}, {name: 'mayonaise'}, {name:'figs'}, {name: 'anything with some kind of white sauce'}, {name: 'greens'}]})
List.create({name: 'beers', items: [{name: 'pilsner'}, {name: 'amber'}, {name: 'porter'}, {name: 'kolsch'}]})
