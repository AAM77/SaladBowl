require 'faker'

#############
# LOCATIONS #
#############
# create 10 locations
10.times do
  Location.create(
    city: Faker::Address.unique.city,
    state: Faker::Address.unique.state,
    country: 'United States'
  )
end

# An array of all the ids for current locations
loc_ids = Location.all.map { |l| l.id }

##############
# SALAD BARS #
##############
10.times do
  SaladBar.create(
    name: Faker::Vehicle.unique.manufacture
  )
end


#########
# USERS #
#########
# create 10 users, assign a location, and persist/save it
10.times do
  new_user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Ancient.unique.hero,
    email: "#{Faker::Creature::Animal.unique.name}@info.com",
    password_digest: BCrypt::Password.create(Faker::Games::Pokemon.name),
    address: Faker::Address.street_address,
    zipcode: Faker::Address.unique.zip_code
  )

  new_user.location = Location.find(loc_ids[rand(loc_ids.length)])
  new_user.save
end

###############
# PREFERENCES #
###############


##############
# CATEGORIES #
##############
# create 10 categories
10.times do
  Category.create(
    name: Faker::Food.unique.vegetables
  )
end


###############
# INGREDIENTS #
###############


###############
# SALAD BOWLS #
###############
