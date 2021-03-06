# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Network.destroy_all
Show.destroy_all

5.times do
    Network.create(name: Faker::Name.unique.initials,  channel: Faker::Number.unique.decimal_part(digits: 2))
end

5.times do
    Show.create(name: Faker::Nation.capital_city,  genre: Faker::Nation.language)
end