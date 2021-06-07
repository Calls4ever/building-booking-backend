# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Building.destroy_all
User.destroy_all
Owner.destroy_all
Booking.destroy_all

User.create({name: 'tsering', username: 'tsering', password: '123'})
Owner.create({name: 'Tsering', username: 'tsering', password: '123'})
o1 = Owner.last
u1 = User.last

10.times do
    Building.create({
        name:Faker::Restaurant.name,
        location: Faker::Address.street_address,
        img_url: Faker::Avatar.image,
        owner_id: o1.id  
    })
    print '>>>'

end
puts ""
puts "Seed is created"

