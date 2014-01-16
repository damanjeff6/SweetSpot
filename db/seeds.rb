# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create([{ name: 'Smitten Ice Cream' },
                   { phone: '(415) 863-1518' },
                   { url: 'smittenicecream.com' }])

Restaurant.create([{ name: 'Pinkberry' },
                  { phone: '(415) 391-1529' },
                  { url: 'pinkberry.com' }])

Restaurant.create([{ name: 'Cako' },
                   { phone: '(415) 895-2256' },
                   { url: 'cako.com' }])

Restaurant.create([{ name: 'Pinkie\'s Bakery' },
                  { phone: '(415) 556-4900' },
                  { url: 'pinkiesbakerysf.com' }])