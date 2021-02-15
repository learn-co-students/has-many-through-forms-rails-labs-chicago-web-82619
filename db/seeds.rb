# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "winter")
Category.create(name: "summer")
Category.create(name: "spring")
Category.create(name: "fall")

User.create(username: "aaron", email: "aaron@hotmail.com")
User.create(username: "dan", email: "dan@hotmail.com")
