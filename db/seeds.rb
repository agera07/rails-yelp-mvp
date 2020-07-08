# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

Restaurant.create(name: 'Meatballs for the people', address: 'Stockholm', phone: 909_898_655, category: 'french')
Restaurant.create(name: 'Giro', address: 'Stockholm', phone: 919_893_651, category: 'belgian')
Restaurant.create(name: 'Mandarin', address: 'Stockholm', phone: 932_898_655, category: 'chinese')
Restaurant.create(name: 'Totemo Ramen', address: 'Stockholm', phone: 955_000_655, category: 'japanese')
