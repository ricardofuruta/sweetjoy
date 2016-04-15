# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities})
#

puts "Cleaning database..."
User.destroy_all

# Clients
puts "Creating Clients..."

ricardo = User.create!( email:'ricardo@gmail.com', password: '1', password_confirmation: '1')

jess = User.create!( email:'jess@gmail.com', password: '1', password_confirmation: '1')
robert = User.create!( email:'robert@gmail.com', password: '1', password_confirmation: '1')

# Bakers
puts "Creating Bakers..."

user1 = User.create!( email:'joicy@gmail.com', password: '1', password_confirmation: '1')
user2 = User.create!( email:'joe@gmail.com', password: '1', password_confirmation: '1')
user3 = User.create!( email:'jean@gmail.com', password: '1', password_confirmation: '1')
user4 = User.create!( email:'gordon@gmail.com', password: '1', password_confirmation: '1')

joicy = Baker.new(
 { firstname: 'Joicy',
   lastname: 'Alves',
   description: 'Chef Patisserie, winner of the 2014 prize of best candy maker of Curitiba',
   address: 'Rue de la Montagne 3, Bruxelles',
   user: user1,
   averagerate: 4.5
   })
joicy[:photo] = "image/upload/v1460725545/aoqtlomnypxsgog9kkvu.jpg"
joicy.save!

baker2 = Baker.new(
 { firstname: 'Joe',
   lastname: 'Murat',
   description: 'I give up a carreer in software development to follow my real passion, making amazing cakes',
   address: 'Rue des Teinturiers 19, Bruxelles',
   user: user2,
   })
baker2[:photo] = "image/upload/v1460725607/ervbiv1pr16iweshcptp.jpg"
baker2.save!

baker3 = Baker.new(
 { firstname: 'Jean',
   lastname: 'Oliver',
   description: 'Jean has a truth passion for patisserie since he was a child. He started baking for his frinds and family and the orders never stop growing since then.',
   address: 'Rue Botanique 59, Brussels',
   user: user3,
   })
baker3[:photo] = "image/upload/v1460725663/irlwinzcf6ginp435xpf.jpg"
baker3.save!

baker4 = Baker.new(
 { firstname: 'Gordon',
   lastname: 'Ramsey',
   description: 'Gordon James Ramsay, OBE is a Scottish-born British chef and restaurateur. His restaurants have been awarded 16 Michelin stars in total and currently hold 9.',
   address: ' Grand Place 15, Bruxelles',
   user: user4,
   })
baker4[:photo] = "image/upload/v1460725715/o8rb5s64ixzbtkste7ap.jpg"
baker4.save!

# Products
puts "Creating Products..."

product = Product.new({name:'Kit Kat Cake', description: 'Cake made with Kit Kat, M&Ms, brigadeiro and chocolate', price: 100.00, baker: joicy})
product[:photo] = "image/upload/v1460725763/qxnraa1dw6imcgvgoddc.jpg"
product.save!

product = Product.new({name:'Chocolate Cake', description: 'Cake with chocolate topping, with chocolate dought and filled with brigadeiro', price: 80.00, baker: joicy})
product[:photo] = "image/upload/v1460725834/yjfnpcuoimmxdwxgrhfr.jpg"
product.save!

product = Product.new({name:'Cake with flower decoration', description: 'Cake with chocolate topping decored with flowers filled with vanilla and dulce de leche', price: 70.00, baker: joicy})
product[:photo] = "image/upload/v1460725881/zlekcnkpmthv586rumaf.jpg"
product.save!

product = Product.new({name:'Strawberry naked cake', description: 'Naked cake with strawberry on top filled with white chocolate ganache', price: 60.00, baker: joicy})
product[:photo] = "image/upload/v1460725924/ksldi3xsddhmrhwfzqb5.jpg"
product.save!

product = Product.new({name:'Colored Cake', description: 'White Chocolate topping, with vanilla dought and filled Dulce de Leche.', price: 70.00, baker: baker2})
product[:photo] = "image/upload/v1460725982/xofpsxwrvdc7nrkzqxzm.jpg"
product.save!

product = Product.new({name:'10 Brownies', description: 'Chocolate brownies filled Dulce de Leche.', price: 20.00, baker: baker2})
product[:photo] = "image/upload/v1460726023/lbce7lsvnfzj17ghoqwk.jpg"
product.save!

product = Product.new({name:'Box with truffles', description: 'Box with 6 truffles: strawberry, chocolate, brigadeiro, banana, brazilian nuts', price: 10.00, baker: baker2})
product[:photo] = "image/upload/v1460726063/mhb98elfk94fejcwitjg.jpg"
product.save!

product = Product.new({name:'50 Brigadeiros', description: 'Brigadeiro is a brazilian candy. Flavors: chocolate, pistachio, brazilian nuts, white chocolate, coconut', price: 70.00, baker: baker3})
product[:photo] = "image/upload/v1460726119/phy91km3rxadyorwwxl9.jpg"
product.save!

product = Product.new({name:'Cupcakes', description: 'White Chocolate topping, with vanilla dought and filled Dulce de Leche.', price: 70.00, baker: baker4})
product[:photo] = "image/upload/v1460726162/oyve8y0sc6v4hfd3u2rb.jpg"
product.save!

# Reviews

puts "Creating Reviews..."

joicy.reviews.create!(user: jess, rate: 5, content: "One of the best chocolate cake I ever had")
joicy.reviews.create!(user: robert, rate: 4, content: "It was a beautiful touch to our special occasion")

puts "DONE!"
#
