require 'faker'

puts 'Destroying all users and clients...'

Client.destroy_all
User.destroy_all

puts 'Seeding in progress...'

# ----------Users------------
user_1 = User.create!(
  { email: 'a@a.a', password: '123456' }
)
user_2 = User.create!(
  { email: 'b@b.b', password: '123456' }
)
user_3 = User.create!(
  { email: 'c@c.c', password: '123456' }
)

# ----------Clients------------
100.times do
  clients = [user_1, user_2, user_3]
  Client.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    user: clients[rand(clients.length)]
  )
end
