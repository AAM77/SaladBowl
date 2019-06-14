require 'faker'

10.times do
  Location.create do |location|
    location.city = Faker::Address.unique.city
    location.state = Faker::Address.unique.state
    location.country = 'United States'
  end
end

10.times do
  User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Ancient.unique.hero,
    email: "#{Faker::Creature::Animal.unique.name}@info.com",
    password_digest: BCrypt::Password.create(Faker::Games::Pokemon.name),
    address: Faker::Address.street_address,
    zipcode: Faker::Address.unique.zip_code
  ).save(validate: false)
end


10.times do
  Category.create do |category|
    category.name = Faker::Food.unique.vegetables
  end
end
