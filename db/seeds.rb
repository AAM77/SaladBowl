require 'faker'

# #############
# # LOCATIONS #
# #############
# # create 10 locations
# 10.times do
#   Location.create(
#     city: Faker::Address.unique.city,
#     state: Faker::Address.unique.state,
#     country: 'United States'
#   )
# end
#
# # An array of all the ids for current locations
# loc_ids = Location.all.map { |l| l.id }
#
# ##############
# # SALAD BARS #
# ##############
# 10.times do
#   new_salad_bar = SaladBar.create(
#     name: Faker::Vehicle.unique.manufacture
#   )
#   rand(3).times do
#     new_salad_bar.locations.push(Location.find(loc_ids[rand(loc_ids.length)]))
#   end
# end
#
#
# #########
# # USERS #
# #########
# # create 10 users, assign a location, and persist/save it
# 10.times do
#   new_user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     username: Faker::Ancient.unique.hero,
#     email: "#{Faker::Creature::Animal.unique.name}@info.com",
#     password_digest: BCrypt::Password.create(Faker::Games::Pokemon.name),
#     address: Faker::Address.street_address,
#     zipcode: Faker::Address.unique.zip_code
#   )
#
#   new_user.location = Location.find(loc_ids[rand(loc_ids.length)])
#   new_user.save
# end
#

users = User.all.map { |u| u.id }
###############
# PREFERENCES #
###############

allergies = [
  'milk',
  'eggs',
  'peanuts',
  'tree nuts',
  'soy',
  'wheat',
  'fish',
  'shellfish',
  'corn',
  'gelatin',
  'beef',
  'chicken',
  'mutton',
  'pork',
  'seeds',
  'spices'
]

true_false = [true, false]

10.times do
  new_preference = Preference.new(
    allergy: allergies.sample,
    vegetarian: true_false.sample,
    kosher: true_false.sample,
    halal: true_false.sample,
    fasting: true_false.sample,
    bodybuilding: true_false.sample,
    bulking: true_false.sample,
    weight_loss: true_false.sample
  )

  new_preference.user = User.find(users[rand(users.length)])
  new_preference.save
end
# t.string :allergy
# t.boolean :vegetarian
# t.boolean :kosher
# t.boolean :halal
# t.boolean :fasting
# t.boolean :bodybuilding
# t.boolean :bulking
# t.boolean :weight_loss

# ##############
# # CATEGORIES #
# ##############
# # create 10 categories
# 10.times do
#   Category.create(
#     name: Faker::Food.unique.vegetables
#   )
# end


###############
# INGREDIENTS #
###############


###############
# SALAD BOWLS #
###############
