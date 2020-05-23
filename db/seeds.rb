# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

langs = [
  { name: 'ruby', data: 25, color: '#CC342D' },
  { name: 'python', data: 20, color: '#0C4B33' },
  { name: 'php', data: 30, color: '#878fc2' },
  { name: 'js', data: 40, color: '#fae500'}
]

langs.each do |lang|
  Lang.create(lang)
end
