# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#
bakers = Baker.create([{ firstname: 'Joicy', lastname: 'Alves', description: 'Chef Patisserie, winner of the 2014 prize of best candy maker of Curitiba', address: 'Rua Alferes Angelo Sampaio, 1041'},
 { firstname: 'Anne', lastname: 'Doe', description: 'I give up a carreer in software development to follow my real passion, making amazing cakes', address: 'Avenida Silva Jardim, 1000' },
 { firstname: 'Ricardo', lastname: 'Furuta', description: 'I lived for two years in Paris where I mastered the techniques of cake patisserie.', address: 'Avenida Batel, 500'}])

products = Product.create([{name:'Kit Kat Cake', description: 'Cake made with Kit Kat, M&Ms, brigadeiro and chocolate', price: 100.00, baker_id: bakers.first},
  {name:'Chocolate Cake', description: 'Cake with chocolate topping, with chocolate dought and filled with brigadeiro', price: 80.00, baker_id: bakers.find(2)},
  {name:'Colored Cake', description: 'White Chocolate topping, with vanilla dought and filled Dulce de Leche.', price: 70.00, baker_id: bakers.find(3)}])

