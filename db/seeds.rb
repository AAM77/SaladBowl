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



##############
# SALAD BARS #
##############

# An array of all the ids for current locations
loc_ids = Location.all.map { |l| l.id }

10.times do
  new_salad_bar = SaladBar.create(
    name: Faker::Vehicle.unique.manufacture
  )
  rand(3).times do
    new_salad_bar.locations.push(Location.find(loc_ids[rand(loc_ids.length)]))
  end
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

# create an array of existing user ids
users = User.all.map { |u| u.id }

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
    bulkin: true_false.sample,
    weight_loss: true_false.sample
  )

  new_preference.user = User.find(users.shift)
  new_preference.save
end


##############
# CATEGORIES #
##############
# create 10 categories
categories = [
  'Carbohydrate',
  'Cheese',
  'Protein',
  'Vegetable',
  'Greens',
  'Fruit',
  'Grain',
  'Dressing'
]

categories.each { |category| Category.create(name: category) }


###############
# SALAD BOWLS #
###############

# meal_time_frames = ['breakfast', 'lunch', 'dinner']
# true_false = [true, false]
#
# 10.times do
#   SaladBowl.create(
#     name: Faker::Food.name,
#     meal_time_frame: meal_time_frames.sample,
#     favorite: true_false.sample
#   )
# end

# breakfast_salad_bowls = [
#   'Grilled Wedge Salad with a Fried Egg & Cranberry Feta',
#   'Blueberry Breakfast Salad',
#   'Sweet Potato Breakfast Salad with Almond Butter Protein Dressing',
#   'Pomegranate Breakfast Salad',
#   'Berry Quinoa Salad',
#   'Smoked Salmon Avocado & Arugula Salad',
#   'Kale Salad with Bacon & 7-minute Egg',
#   'Turkey Bacon, Egg & Avocado Breakfast Salad',
#   'Butternut Squash, Apple & Egg Breakfast Salad',
#   'Strawberry Salad with Coconut Bacon & Black Pepper Vinaigrette',
#   'Miso Veggie Breakfast Bowl',
#   'Vegan Breakfast Salad',
#   'BLT Breakfast Salad with Soft Boiled Eggs & Avocado',
#   'Kale Citrus Salad',
#   'Green Goddess Dressing & Breakfast Salad'
# ]

# lunch_salad_bowls = [
#   'Grilled Lemon Herb Mediterranean Chicken Salad',
#   'Honey Mustard Chicken, Avocado & Turkey Bacon Salad',
#   'Grilled Chimichurri Chicken Avocado Salad',
#   'Chicken Avocado Caprese Salad',
#   'Grilled Chilli Lime Chicken Fajita Salad',
#   'Salmon and Avocado Caesar Salad',
#   'Balsamic Chickpea Avocado Feta Salad',
#   'Skinny Lemon Garlic Shrimp Caesar Salad',
#   'Greek Lemon Garlic Chicken Salad',
#   'Thai Chicken Meatball Salad',
#   'Bruschetta Chicken Pasta Salad',
#   'Skinny Chicken and Avocado Caesar Salad',
#   'Grilled Caesar Salad Flatbread',
#   'Balsamic Beet Salad with Arugula, Goat Cheese, and Walnuts',
#   'Chicken Gyro Salad with Tzatziki Dressing'
# ]

# dinner_salad_bowls = [
#   'Ratatouille Salad',
#   'Chicken Fajita Salad with Lime-Cilantro Vinaigrette',
#   'Grilled Watermelon Salad with Steak and Tomatoes',
#   'Salmon Niçoise Salad',
#   'Steak Salad with Honey-Lemon Vinaigrette',
#   'Spinach, Potato and Corn Salad',
#   'Fajita Salad with Charred Jalapeño Dressing',
#   'Beet, Tangerine and Steak Salad',
#   'Steak with Lentil and Grapefruit Salad',
#   'Shaved Squash Salad',
#   'Gingery Asian Noodle Salad with Turkey and Cucumbers',
#   'Southwestern Chopped Salad with Ranch',
#   'Barbecue Chicken Salad',
#   'Chopped Thai Chicken Salad',
#   'Quinoa, Apricot and Arugula Salad',
#   'Chicken Gyro Salad with Tzatziki Dressing'
# ]

# def convert_to_hash(meal_type_bowls, meal_type)
#   meal_type_bowls.map { |bowl| {name: bowl, meal_time_frame: meal_type, favorite: false} }
# end

breakfast_salad_bowls = [
  {:name=>"Grilled Wedge Salad with a Fried Egg & Cranberry Feta", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Blueberry Breakfast Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Sweet Potato Breakfast Salad with Almond Butter Protein Dressing", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Pomegranate Breakfast Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Berry Quinoa Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Smoked Salmon Avocado & Arugula Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Kale Salad with Bacon & 7-minute Egg", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Turkey Bacon, Egg & Avocado Breakfast Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Butternut Squash, Apple & Egg Breakfast Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Strawberry Salad with Coconut Bacon & Black Pepper Vinaigrette", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Miso Veggie Breakfast Bowl", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Vegan Breakfast Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"BLT Breakfast Salad with Soft Boiled Eggs & Avocado", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Kale Citrus Salad", :meal_time_frame=>"breakfast", :favorite=>false},
  {:name=>"Green Goddess Dressing & Breakfast Salad", :meal_time_frame=>"breakfast", :favorite=>false}
]

 lunch_salad_bowls = [
   {:name=>"Grilled Lemon Herb Mediterranean Chicken Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Honey Mustard Chicken, Avocado & Turkey Bacon Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Grilled Chimichurri Chicken Avocado Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Chicken Avocado Caprese Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Grilled Chilli Lime Chicken Fajita Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Salmon and Avocado Caesar Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Balsamic Chickpea Avocado Feta Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Skinny Lemon Garlic Shrimp Caesar Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Greek Lemon Garlic Chicken Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Thai Chicken Meatball Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Bruschetta Chicken Pasta Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Skinny Chicken and Avocado Caesar Salad", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Grilled Caesar Salad Flatbread", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Balsamic Beet Salad with Arugula, Goat Cheese, and Walnuts", :meal_time_frame=>"lunch", :favorite=>false},
   {:name=>"Chicken Gyro Salad with Tzatziki Dressing", :meal_time_frame=>"lunch", :favorite=>false}
 ]


dinner_salad_bowls = [
  {:name=>"Ratatouille Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Chicken Fajita Salad with Lime-Cilantro Vinaigrette", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Grilled Watermelon Salad with Steak and Tomatoes", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Salmon Niçoise Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Steak Salad with Honey-Lemon Vinaigrette", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Spinach, Potato and Corn Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Fajita Salad with Charred Jalapeño Dressing", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Beet, Tangerine and Steak Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Steak with Lentil and Grapefruit Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Shaved Squash Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Gingery Asian Noodle Salad with Turkey and Cucumbers", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Southwestern Chopped Salad with Ranch", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Barbecue Chicken Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Chopped Thai Chicken Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Quinoa, Apricot and Arugula Salad", :meal_time_frame=>"dinner", :favorite=>false},
  {:name=>"Chicken Gyro Salad with Tzatziki Dressing", :meal_time_frame=>"dinner", :favorite=>false}
]

breakfast_salad_bowls.each { |bowl| SaladBowl.create(bowl) }
lunch_salad_bowls.each { |bowl| SaladBowl.create(bowl) }
dinner_salad_bowls.each { |bowl| SaladBowl.create(bowl) }



###############
# INGREDIENTS #
###############

categories = Category.all.map { |c| c.id }
salad_bowls = SaladBowl.all.map { |s| s.id }

# Create 10 Ingredients
10.times do
  new_ingredient = Ingredient.new(
    name: Faker::Food.ingredient,
    calories: Faker::Number.number(3).to_i,
    fat: Faker::Number.number(3).to_i,
    cholesterol: Faker::Number.number(3).to_i,
    sodium: Faker::Number.number(3).to_i,
    carbohydrates: Faker::Number.number(3).to_i,
    sugar: Faker::Number.number(2).to_i,
    protein: Faker::Number.number(2).to_i
  )

  new_ingredient.category = Category.find(categories.sample)
  rand(7).times do
    new_ingredient.salad_bowls.push(SaladBowl.find(salad_bowls.sample))
  end

  new_ingredient.save
end



# t.string "name"
# t.integer "calories"
# t.integer "fat"
# t.integer "cholesterol"
# t.integer "sodium"
# t.integer "carbohydrates"
# t.integer "sugar"
# t.integer "protein"
