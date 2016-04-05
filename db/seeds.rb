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
baker1 = Baker.create([
 { firstname: 'Joicy',
   lastname: 'Alves',
   description: 'Chef Patisserie, winner of the 2014 prize of best candy maker of Curitiba',
   address: 'Rue de la Collégiale 27, Bruxelles',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_300,w_300/v1459806781/IMG_3854_krmace.jpg')
   }])
baker2 = Baker.create([
 { firstname: 'Binita',
   lastname: 'Ramla',
   description: 'I give up a carreer in software development to follow my real passion, making amazing cakes',
   address: 'Rue du Marché aux Herbes 28, Bruxelles',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,w_300/v1459851289/binita_msq6x0.jpg')
   }])
baker3 = Baker.create([
 { firstname: 'Ricardo',
   lastname: 'Furuta',
   description: 'I lived for two years in Paris where I mastered the techniques of cake patisserie.',
   address: 'Rue des Teinturiers 19, Bruxelles',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_300,w_300/v1459809436/422569_346632905375144_2138829642_n_yn2o5k.jpg')
   }])


products = Product.create([{name:'Kit Kat Cake', description: 'Cake made with Kit Kat, M&Ms, brigadeiro and chocolate', price: 100.00, baker: baker1.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_600,w_600,x_311/v1459806782/Sweet_Joy_077_web_bq9acr.jpg')},
  {name:'Chocolate Cake', description: 'Cake with chocolate topping, with chocolate dought and filled with brigadeiro', price: 80.00, baker: baker2.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_600,w_600/v1459806781/Sweet_Joy_100_web_1_tjz95m.jpg')},
  {name:'Colored Cake', description: 'White Chocolate topping, with vanilla dought and filled Dulce de Leche.', price: 70.00, baker: baker3.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_600,w_600/v1459806786/bolo_colorido_t66ldf.jpg')}])

