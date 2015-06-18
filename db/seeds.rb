# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do
  kind = ["ruby", "html", "css", "javascript"].sample
  title = [Faker::Hacker.ingverb, Faker::Hacker.noun].join(' ')
  work  = Faker::Lorem.paragraph

  Snippet.create(kind: kind, title: title, work: work)
end
