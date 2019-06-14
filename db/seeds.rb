require 'faker'

# 10.times do
#   User.create do |user|
#     user.first_name = Faker::Name.unique.first_name,
#     user.last_name  = Faker::Name.unique.last_name,
#     user.username   = Faker::Ancient.unique.hero,
#     user.email      = Faker::Creature::Animal.unique.name + '@info.com',
#     user.password_digest = BCrypt::Password.create(Faker::Games::Pokemon.name)
#     user.address    = Faker::Address.unique.street_address,
#     user.zipcode    = Faker::Address.unique.zip_code
#   end
# end

10.times do
  Category.create do |category|
    category.name = Faker::Food.unique.vegetables
  end
end
