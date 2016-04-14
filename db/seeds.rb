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
user1 = User.create!( email:'joicy@gmail.com', password: '1', password_confirmation: '1')
user2 = User.create!( email:'ricardo@gmail.com', password: '1', password_confirmation: '1')
user3 = User.create!( email:'jean@gmail.com', password: '1', password_confirmation: '1')
user4 = User.create!( email:'gordon@gmail.com', password: '1', password_confirmation: '1')

baker1 = Baker.create!([

 { firstname: 'Joicy',
   lastname: 'Alves',
   description: 'Chef Patisserie, winner of the 2014 prize of best candy maker of Curitiba',
   address: 'Rue de la Montagne 3, Bruxelles',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_300,w_300/v1459806781/IMG_3854_krmace.jpg'),
   user: user1,
   }])

baker2 = Baker.create!([

 { firstname: 'Ricardo',
   lastname: 'Furuta',
   description: 'I give up a carreer in software development to follow my real passion, making amazing cakes',
   address: 'Rue des Teinturiers 19, Bruxelles',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_300,w_300/v1459809436/422569_346632905375144_2138829642_n_yn2o5k.jpg'),
   user: user2,
   }])

baker3 = Baker.create!([

 { firstname: 'Jean',
   lastname: 'Oliver',
   description: 'Jean has a truth passion for patisserie since he was a child. He started baking for his frinds and family and the orders never stop growing since then.',
   address: 'Rue Botanique 59, Brussels',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_300,w_300/v1460206506/0_Frameries_-_Chocolatier_-_P%C3%A2tisserie_Godefroid__2_xijxra.jpg'),
   user: user3,
   }])

baker4 = Baker.create!([

 { firstname: 'Gordon',
   lastname: 'Ramsey',
   description: 'Gordon James Ramsay, OBE is a Scottish-born British chef and restaurateur. His restaurants have been awarded 16 Michelin stars in total and currently hold 9.',
   address: ' Grand Place 15, Bruxelles',
   photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_300,w_300/v1460207175/gordonramsey_t1fsmz.jpg'),
   user: user4,
   }])

products = Product.create([{name:'Kit Kat Cake', description: 'Cake made with Kit Kat, M&Ms, brigadeiro and chocolate', price: 100.00, baker: baker1.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_600,w_600,x_311/v1459806782/Sweet_Joy_077_web_bq9acr.jpg')},
  {name:'Chocolate Cake', description: 'Cake with chocolate topping, with chocolate dought and filled with brigadeiro', price: 80.00, baker: baker1.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_600,w_600/v1459806781/Sweet_Joy_100_web_1_tjz95m.jpg')},
  {name:'Cake with flower decoration', description: 'Cake with chocolate topping decored with flowers filled with vanilla and dulce de leche', price: 70.00, baker: baker1.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_600,w_600/v1460569054/Sweet_Joy_109_web_zr2pve.jpg')},
  {name:'Strawberry naked cake', description: 'Naked cake with strawberry on top filled with white chocolate ganache', price: 60.00, baker: baker1.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_600,w_600/v1460569382/10696268_788449167873359_8804550510365376615_n_f5ee5x.jpg'
)},
  {name:'Colored Cake', description: 'White Chocolate topping, with vanilla dought and filled Dulce de Leche.', price: 70.00, baker: baker2.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_crop,h_600,w_600/v1459806786/bolo_colorido_t66ldf.jpg')},
  {name:'10 Brownies', description: 'Chocolate brownies filled Dulce de Leche.', price: 20.00, baker: baker2.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_600,w_600/v1460569742/Swit_Joy_0001_AMO_1311web_dzukbn.jpg')},
  {name:'Box with truffles', description: 'Box with 6 truffles: strawberry, chocolate, brigadeiro, banana, brazilian nuts', price: 10.00, baker: baker2.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/v1460570380/Swit_Joy_0074_AMO_1384web_mpshbg.jpg')},
  {name:'50 Brigadeiros', description: 'Brigadeiro is a brazilian candy. Flavors: chocolate, pistachio, brazilian nuts, white chocolate, coconut', price: 70.00, baker: baker3.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_600,w_600/v1460207391/SweetJoy009Alta_StudioGaea_ze4sm4.jpg')},
  {name:'Cupcakes', description: 'White Chocolate topping, with vanilla dought and filled Dulce de Leche.', price: 70.00, baker: baker4.first, photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,h_600,w_600/v1460207525/Sweet_Joy_006_web_hudzu2.jpg')}])


# baker2 = Baker.create([

#  { firstname: 'Binita',

#    lastname: 'Ramla',

#    description: 'I give up a carreer in software development to follow my real passion, making amazing cakes',

#    address: 'Rue du Marché aux Herbes 28, Bruxelles',

#    photo: open('http://res.cloudinary.com/ricardofuruta/image/upload/c_scale,w_300/v1459851289/binita_msq6x0.jpg')

#    }])

