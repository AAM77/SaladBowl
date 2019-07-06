require 'faker'



#############
# LOCATIONS #
#############

CS.countries.each do |country_abbrev, country|
  new_country = Country.create(long_name: country, short_name: country_abbrev.to_s)

  CS.states(country_abbrev).each do |state_abbrev, state|
    new_state = State.new(long_name: state, short_name: state_abbrev.to_s)
    new_state.country = new_country
    new_state.save

    CS.cities(state_abbrev).each do |city_name|
      new_city = City.create(long_name: city_name, short_name: city_name)
      new_city.state = new_state
      new_city.save
    end
  end
end

##############
# SALAD BARS #
##############

# An array of all the ids for current locations




#########
# USERS #
#########
# create 10 users, assign a location, and persist/save it

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



###############
# PREFERENCES #
###############

# # create an array of existing user ids
# users = User.all.map { |u| u.id }
#
# allergies = [
#   'milk',
#   'eggs',
#   'peanuts',
#   'tree nuts',
#   'soy',
#   'wheat',
#   'fish',
#   'shellfish',
#   'corn',
#   'gelatin',
#   'beef',
#   'chicken',
#   'mutton',
#   'pork',
#   'seeds',
#   'spices'
# ]
#
# true_false = [true, false]
#
# 10.times do
#   new_preference = Preference.new(
#     allergy: allergies.sample,
#     vegetarian: true_false.sample,
#     kosher: true_false.sample,
#     halal: true_false.sample,
#     fasting: true_false.sample,
#     bodybuilding: true_false.sample,
#     bulkin: true_false.sample,
#     weight_loss: true_false.sample
#   )
#
#   new_preference.user = User.find(users.shift)
#   new_preference.save
# end


##############
# CATEGORIES #
##############
# create 10 categories
# categories = [
#   'Carbohydrate',
#   'Cheese',
#   'Protein',
#   'Vegetable',
#   'Greens',
#   'Fruit',
#   'Grain',
#   'Dressing'
# ]
#
# categories.each { |category| Category.create(name: category) }


# ###############
# # SALAD BOWLS #
# ###############
#
# breakfast_salad_bowls = [
#   {
#     :name=>"Grilled Wedge Salad with a Fried Egg & Cranberry Feta",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://www.copymethat.com/r/wN6Pn43/grilled-wedge-salad-with-a-fried-egg-and/",
#     :serves=> 4,
#     :calories=> 281,
#     :fat=> 20,
#     :cholesterol=> 9.3,
#     :carbohydrates=> 7,
#     :sugar=> 4,
#     :sodium=> 844,
#     :fiber=> 1,
#     :protein=> 17
#   },
#   {
#     :name=>"Blueberry Breakfast Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://thisweekfordinner.com/blueberry-breakfast-salad/",
#     :serves=> 8,
#     :calories=> 228,
#     :fat=> 15,
#     :cholesterol=> 2.5,
#     :carbohydrates=> 68,
#     :sugar=> 31,
#     :sodium=> 55,
#     :fiber=> 14,
#     :protein=> 14
#   },
#   {
#     :name=>"Sweet Potato Breakfast Salad with Almond Butter Protein Dressing",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://www.thefullhelping.com/sweet-potato-breakfast-salad-with-almond-butter-protein-dressing/",
#     :serves=> 1,
#     :calories=> 80,
#     :fat=> 0.09,
#     :cholesterol=> 0,
#     :carbohydrates=> 12.43,
#     :sugar=> 4.5,
#     :sodium=> 93,
#     :fiber=> 4.2,
#     :protein=> 4
#   },
#   {
#     :name=>"Pomegranate Breakfast Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://lovegrowswild.com/2014/01/pomegranate-breakfast-salad/",
#     :serves=> 6,
#     :calories=> 405,
#     :fat=> 29,
#     :cholesterol=> 0,
#     :carbohydrates=> 23,
#     :sugar=> 13.5,
#     :sodium=> 554,
#     :fiber=> 13.5,
#     :protein=> 15
#   },
#   {
#     :name=>"Berry Quinoa Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://www.twopeasandtheirpod.com/berry-quinoa-salad/",
#     :serves=> 6,
#     :calories=> 365,
#     :fat=> 10,
#     :cholesterol=> 0,
#     :carbohydrates=> 61,
#     :sugar=> 8,
#     :sodium=> 1,
#     :fiber=> 13,
#     :protein=> 11
#   },
#   {
#     :name=>"Smoked Salmon Avocado & Arugula Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://www.fussfreecooking.com/recipe-categories/meat-recipes/smoked-salmon-avocado-and-rocket-arugula-salad/",
#     :serves=> 4,
#     :calories=> 371,
#     :fat=> 37,
#     :cholesterol=> 6,
#     :carbohydrates=> 8.5,
#     :sugar=> 1.5,
#     :sodium=> 434,
#     :fiber=> 4.5,
#     :protein=> 6
#   },
#   {
#     :name=>"Kale Salad with Bacon & 7-minute Egg",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://cookprimalgourmet.com/king-kale-salad-with-bacon-and-6-minute-egg",
#     :serves=> 3,
#     :calories=> 487,
#     :fat=> 34,
#     :cholesterol=> 6.2,
#     :carbohydrates=> 33,
#     :sugar=> 15,
#     :sodium=> 640,
#     :fiber=> 7.4,
#     :protein=> 16
#   },
#   {
#     :name=>"Turkey Bacon, Egg & Avocado Breakfast Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"",
#     :serves=> 5,
#     :calories=> 531,
#     :fat=> 42,
#     :cholesterol=> 6.2,
#     :carbohydrates=> 15,
#     :sugar=> 4.7,
#     :sodium=> 700,
#     :fiber=> 7.4,
#     :protein=> 16
#   },
#   {
#     :name=>"Butternut Squash, Apple & Egg Breakfast Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://www.eatingbirdfood.com/fall-breakfast-salad/",
#     :serves=> 1,
#     :calories=> 606,
#     :fat=> 44,
#     :cholesterol=> 16,
#     :carbohydrates=> 43,
#     :sugar=> 16,
#     :sodium=> 97,
#     :fiber=> 12.4,
#     :protein=> 18.4
#   },
#   {
#     :name=>"Strawberry Salad with Coconut Bacon & Black Pepper Vinaigrette",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://ohmyveggies.com/strawberry-salad/",
#     :serves=> 4,
#     :calories=> 303,
#     :fat=> 23,
#     :cholesterol=> 11,
#     :carbohydrates=> 20,
#     :sugar=> 9,
#     :sodium=> 355,
#     :fiber=> 7,
#     :protein=> 10.3
#   },
#   {
#     :name=>"Miso Veggie Breakfast Bowl",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://web.archive.org/web/20150325093854/http://www.reclaimingprovincial.com/2015/01/15/miso-veggie-breakfast-bowl-asheville-workshop/",
#     :serves=> 2,
#     :calories=> 512,
#     :fat=> 24,
#     :cholesterol=> 4.8,
#     :carbohydrates=> 46,
#     :sugar=> 18,
#     :sodium=> 340,
#     :fiber=> 15,
#     :protein=> 19
#   },
#   {
#     :name=>"Vegan Breakfast Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"https://web.archive.org/web/20161231160359/http://mylittlecelebration.com:80/vegan-breakfast-salad/",
#     :serves=> 1,
#     :calories=> 372,
#     :fat=> 12,
#     :cholesterol=> 2.3,
#     :carbohydrates=> 67,
#     :sugar=> 42,
#     :sodium=> 129,
#     :fiber=> 15,
#     :protein=> 11
#   },
#   {
#     :name=>"BLT Breakfast Salad with Soft Boiled Eggs & Avocado",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://soletshangout.com/blt-breakfast-salad-with-soft-boiled-eggs-avocado/",
#     :serves=> 2,
#     :calories=> 554,
#     :fat=> 38,
#     :cholesterol=> 9,
#     :carbohydrates=> 33,
#     :sugar=> 8,
#     :sodium=> 676,
#     :fiber=> 15,
#     :protein=> 23
#   },
#   {
#     :name=>"Kale Citrus Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://minimalistbaker.com/kale-citrus-salad/",
#     :serves=> 4,
#     :calories=> 143,
#     :fat=> 1,
#     :cholesterol=> 0,
#     :carbohydrates=> 31,
#     :sugar=> 15,
#     :sodium=> 32,
#     :fiber=> 2.6,
#     :protein=> 4
#   },
#   {
#     :name=>"Green Goddess Dressing & Breakfast Salad",
#     :meal_time_frame=>"breakfast",
#     :favorite=>false,
#     :url=>"http://lexiscleankitchen.com/2015/06/30/green-goddess-dressing-breakfast-salad/",
#     :serves=> 2,
#     :calories=> 413,
#     :fat=> 25,
#     :cholesterol=> 7,
#     :carbohydrates=> 27,
#     :sugar=> 6,
#     :sodium=> 547,
#     :fiber=> 7,
#     :protein=> 21
#   }
# ]
#
#  lunch_salad_bowls = [
#    {
#      :name=>"Grilled Lemon Herb Mediterranean Chicken Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/grilled-lemon-herb-mediterranean-chicken-salad-recipe/",
#      :serves=> 4,
#      :calories=> 336,
#      :fat=> 21,
#      :cholesterol=> 107,
#      :carbohydrates=> 13,
#      :sugar=> 4,
#      :sodium=> 271,
#      :fiber=> 6,
#      :protein=> 24
#    },
#    {
#      :name=>"Honey Mustard Chicken, Avocado & Turkey Bacon Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/honey-mustard-chicken-salad/",
#      :serves=> 0,
#      :calories=> 410,
#      :fat=> 20,
#      :cholesterol=> 108,
#      :carbohydrates=> 357,
#      :sugar=> 25,
#      :sodium=> 357,
#      :fiber=> 5,
#      :protein=> 25
#    },
#    {
#      :name=>"Grilled Chimichurri Chicken Avocado Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/grilled-chimichurri-chicken-avocado-salad/",
#      :serves=> 0,
#      :calories=> 449,
#      :fat=> 34,
#      :cholesterol=> 110,
#      :carbohydrates=> 15,
#      :sugar=> 4,
#      :sodium=> 103,
#      :fiber=> 9,
#      :protein=> 22
#    },
#    {
#      :name=>"Chicken Avocado Caprese Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/chicken-avocado-caprese-salad/",
#      :serves=> 0,
#      :calories=> 426,
#      :fat=> 32,
#      :cholesterol=> 115,
#      :carbohydrates=> 10,
#      :sugar=> 6,
#      :sodium=> 692,
#      :fiber=> 5,
#      :protein=> 22
#    },
#    {
#      :name=>"Grilled Chilli Lime Chicken Fajita Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/grilled-chilli-lime-chicken-fajita-salad/",
#      :serves=> 0,
#      :calories=> 484,
#      :fat=> 37,
#      :cholesterol=> 110,
#      :carbohydrates=> 13,
#      :sugar=> 3,
#      :sodium=> 689,
#      :fiber=> 8,
#      :protein=> 19
#    },
#    {
#      :name=>"Salmon and Avocado Caesar Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/salmon-and-avocado-caesar-salad-recipe/",
#      :serves=> 0,
#      :calories=> 828,
#      :fat=> 58.2,
#      :cholesterol=> 0,
#      :carbohydrates=> 13.5,
#      :sugar=> 0,
#      :sodium=> 0,
#      :fiber=> 8,
#      :protein=> 49.5
#    },
#    {
#      :name=>"Balsamic Chickpea Avocado Feta Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/balsamic-chickpea-avocado-feta-salad/",
#      :serves=> 0,
#      :calories=> 0,
#      :fat=> 0,
#      :cholesterol=> 0,
#      :carbohydrates=> 0,
#      :sugar=> 0,
#      :sodium=> 0,
#      :fiber=> 0,
#      :protein=> 0
#    },
#    {
#      :name=>"Skinny Lemon Garlic Shrimp Caesar Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/skinny-lemon-garlic-shrimp-caesar-salad/",
#      :serves=> 0,
#      :calories=> 577,
#      :fat=> 32.2,
#      :cholesterol=> 407.3,
#      :carbohydrates=> 23.3,
#      :sugar=> 4.3,
#      :sodium=> 1898.5,
#      :fiber=> 6.4,
#      :protein=> 50
#    },
#    {
#      :name=>"Greek Lemon Garlic Chicken Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/greek-lemon-garlic-chicken-salad/",
#      :serves=> 0,
#      :calories=> 0,
#      :fat=> 0,
#      :cholesterol=> 0,
#      :carbohydrates=> 0,
#      :sugar=> 0,
#      :sodium=> 0,
#      :fiber=> 0,
#      :protein=> 0
#    },
#    {
#      :name=>"Thai Chicken Meatball Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/thai-chicken-meatball-salad/",
#      :serves=> 0,
#      :calories=> 0,
#      :fat=> 0,
#      :cholesterol=> 0,
#      :carbohydrates=> 0,
#      :sugar=> 0,
#      :sodium=> 0,
#      :fiber=> 0,
#      :protein=> 0
#    },
#    {
#      :name=>"Bruschetta Chicken Pasta Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/bruschetta-chicken-pasta-salad/",
#      :serves=> 0,
#      :calories=> 384,
#      :fat=> 11,
#      :cholesterol=> 41,
#      :carbohydrates=> 47,
#      :sugar=> 3,
#      :sodium=> 169,
#      :fiber=> 2,
#      :protein=> 22
#    },
#    {
#      :name=>"Skinny Chicken and Avocado Caesar Salad",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/skinny-chicken-and-avocado-caesar-salad/",
#      :serves=> 0,
#      :calories=> 597,
#      :fat=> 32.5,
#      :cholesterol=> 0,
#      :carbohydrates=> 19.2,
#      :sugar=> 0,
#      :sodium=> 0,
#      :fiber=> 5,
#      :protein=> 46.4
#    },
#    {
#      :name=>"Grilled Caesar Salad Flatbread",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a54829/grilled-caesar-salad-flatbread-recipe/",
#      :serves=> 0,
#      :calories=> 536,
#      :fat=> 17,
#      :cholesterol=> 17,
#      :carbohydrates=> 57,
#      :sugar=> 0,
#      :sodium=> 1057,
#      :fiber=> 5,
#      :protein=> 39
#    },
#    {
#      :name=>"Balsamic Beet Salad with Arugula, Goat Cheese, and Walnuts",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://www.adishofdailylife.com/2015/03/balsamic-beet-salad-with-arugula-goat-cheese-and-walnuts/",
#      :serves=> 0,
#      :calories=> 0,
#      :fat=> 0,
#      :cholesterol=> 0,
#      :carbohydrates=> 0,
#      :sugar=> 0,
#      :sodium=> 0,
#      :fiber=> 0,
#      :protein=> 0
#    },
#    {
#      :name=>"Cilantro Lime Chicken Salad & Mango Avocado Salsa",
#      :meal_time_frame=>"lunch",
#      :favorite=>false,
#      :url=>"https://cafedelites.com/cilantro-lime-chicken-salad-mango-avocado-salsa/",
#      :serves=> 0,
#      :calories=> 472,
#      :fat=> 32.4,
#      :cholesterol=> 0,
#      :carbohydrates=> 28,
#      :sugar=> 20,
#      :sodium=> 4,
#      :fiber=> 6.2,
#      :protein=> 21.7
#    }
#  ]
#
#
# dinner_salad_bowls = [
#   {
#     :name=>"Ratatouille Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a59407/ratatouille-salad-recipe/",
#     :serves=> 0,
#     :calories=> 309,
#     :fat=> 17,
#     :cholesterol=> 7,
#     :carbohydrates=> 30,
#     :sugar=> 0,
#     :sodium=> 452,
#     :fiber=> 6,
#     :protein=> 12
#   },
#   {
#     :name=>"Chopped Thai Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.dinneratthezoo.com/healthy-salad-recipes/",
#     :serves=> 0,
#     :calories=> 419,
#     :fat=> 19,
#     :cholesterol=> 0,
#     :carbohydrates=> 34,
#     :sugar=> 19,
#     :sodium=> 448,
#     :fiber=> 9,
#     :protein=> 21
#   },
#   {
#     :name=>"Grilled Watermelon Salad with Steak and Tomatoes",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a59400/grilled-watermelon-salad-steak-tomatoes-recipe/",
#     :serves=> 0,
#     :calories=> 369,
#     :fat=> 19,
#     :cholesterol=> 74,
#     :carbohydrates=> 24,
#     :sugar=> 0,
#     :sodium=> 344,
#     :fiber=> 4,
#     :protein=> 28
#   },
#   {
#     :name=>"Salmon Niçoise Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a59397/salmon-nicoise-salad-recipe/",
#     :serves=> 0,
#     :calories=> 568,
#     :fat=> 34,
#     :cholesterol=> 274,
#     :carbohydrates=> 27,
#     :sugar=> 0,
#     :sodium=> 597,
#     :fiber=> 5,
#     :protein=> 39
#   },
#   {
#     :name=>"Steak Salad with Honey-Lemon Vinaigrette",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a57720/steak-salad-honey-lemon-vinaigrette-recipe/",
#     :serves=> 0,
#     :calories=> 329,
#     :fat=> 13.5,
#     :cholesterol=> 74,
#     :carbohydrates=> 27,
#     :sugar=> 0,
#     :sodium=> 334,
#     :fiber=> 4,
#     :protein=> 28
#   },
#   {
#     :name=>"Spinach, Potato and Corn Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a54827/spinach-potato-and-corn-salad-recipe/",
#     :serves=> 0,
#     :calories=> 276,
#     :fat=> 12.5,
#     :cholesterol=> 13,
#     :carbohydrates=> 31,
#     :sugar=> 0,
#     :sodium=> 645,
#     :fiber=> 4,
#     :protein=> 10
#   },
#   {
#     :name=>"Fajita Salad with Charred Jalapeño Dressing",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a54828/fajita-salad-with-charred-jalapeno-dressing-recipe/",
#     :serves=> 0,
#     :calories=> 399,
#     :fat=> 27,
#     :cholesterol=> 79,
#     :carbohydrates=> 14,
#     :sugar=> 0,
#     :sodium=> 309,
#     :fiber=> 4,
#     :protein=> 27
#   },
#   {
#     :name=>"Beet, Tangerine and Steak Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a53273/beet-tangerine-and-steak-salad/",
#     :serves=> 0,
#     :calories=> 225,
#     :fat=> 10,
#     :cholesterol=> 55,
#     :carbohydrates=> 14,
#     :sugar=> 0,
#     :sodium=> 336,
#     :fiber=> 3,
#     :protein=> 20
#   },
#   {
#     :name=>"Steak with Lentil and Grapefruit Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a13365/steak-lentil-grapefruit-salad-recipe-wdy0215/",
#     :serves=> 4,
#     :calories=> 314,
#     :fat=> 0,
#     :cholesterol=> 0,
#     :carbohydrates=> 0,
#     :sugar=> 0,
#     :sodium=> 0,
#     :fiber=> 0,
#     :protein=> 0
#   },
#   {
#     :name=>"Shaved Squash Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a29540/shaved-squash-salad-recipe-ghk0315/",
#     :serves=> 0,
#     :calories=> 345,
#     :fat=> 0,
#     :cholesterol=> 0,
#     :carbohydrates=> 0,
#     :sugar=> 0,
#     :sodium=> 0,
#     :fiber=> 0,
#     :protein=> 0
#   },
#   {
#     :name=>"Gingery Asian Noodle Salad with Turkey and Cucumbers",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.womansday.com/food-recipes/food-drinks/recipes/a13366/gingery-asian-noodle-salad-turkey-cucumbers-recipe-wdy0215/",
#     :serves=> 0,
#     :calories=> 454,
#     :fat=> 0,
#     :cholesterol=> 0,
#     :carbohydrates=> 0,
#     :sugar=> 0,
#     :sodium=> 0,
#     :fiber=> 0,
#     :protein=> 0
#   },
#   {
#     :name=>"Southwestern Chopped Salad with Ranch",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://juliasalbum.com/southwestern-chopped-salad-with-buttermilk-ranch-dressing/",
#     :serves=> 0,
#     :calories=> 0,
#     :fat=> 0,
#     :cholesterol=> 0,
#     :carbohydrates=> 0,
#     :sugar=> 0,
#     :sodium=> 0,
#     :fiber=> 0,
#     :protein=> 0
#   },
#   {
#     :name=>"Barbecue Chicken Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://damndelicious.net/2014/01/03/bbq-chicken-salad/?utm_source=rss&utm_medium=rss&utm_campaign=bbq-chicken-salad",
#     :serves=> 0,
#     :calories=> 401,
#     :fat=> 19.8,
#     :cholesterol=> 75.2,
#     :carbohydrates=> 28.3,
#     :sugar=> 7.9,
#     :sodium=> 734.2,
#     :fiber=> 6.1,
#     :protein=> 29.1
#   },
#   {
#     :name=>"Chopped Thai Chicken Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://pinchofyum.com/chopped-thai-chicken-salad",
#     :serves=> 6,
#     :calories=> 456,
#     :fat=> 30.4,
#     :cholesterol=> 27.6,
#     :carbohydrates=> 31.9,
#     :sugar=> 20.9,
#     :sodium=> 645.3,
#     :fiber=> 6,
#     :protein=> 19.6
#   },
#   {
#     :name=>"Quinoa, Apricot and Arugula Salad",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.loveandlemons.com/arugula-salad-quinoa-apricot-avocado/",
#     :serves=> 0,
#     :calories=> 0,
#     :fat=> 0,
#     :cholesterol=> 0,
#     :carbohydrates=> 0,
#     :sugar=> 0,
#     :sodium=> 0,
#     :fiber=> 0,
#     :protein=> 0
#   },
#   {
#     :name=>"Chicken Gyro Salad with Tzatziki Dressing",
#     :meal_time_frame=>"dinner",
#     :favorite=>false,
#     :url=>"https://www.lecremedelacrumb.com/chicken-gyro-salad-with-tzatziki-dressing",
#     :serves=> 0,
#     :calories=> 0,
#     :fat=> 0,
#     :cholesterol=> 0,
#     :carbohydrates=> 0,
#     :sugar=> 0,
#     :sodium=> 0,
#     :fiber=> 0,
#     :protein=> 0
#   }
# ]
#
# breakfast_salad_bowls.each { |bowl| SaladBowl.create(bowl) }
# lunch_salad_bowls.each { |bowl| SaladBowl.create(bowl) }
# dinner_salad_bowls.each { |bowl| SaladBowl.create(bowl) }



###############
# INGREDIENTS #
###############

# categories = Category.all.map { |c| c.id }
# salad_bowls = SaladBowl.all.map { |s| s.id }
#
# # Create 10 Ingredients
# 10.times do
#   new_ingredient = Ingredient.new(
#     name: Faker::Food.ingredient,
#     calories: Faker::Number.number(2).to_i,
#     fat: Faker::Number.number(2).to_i,
#     cholesterol: Faker::Number.number(2).to_i,
#     sodium: Faker::Number.number(2).to_i,
#     carbohydrates: Faker::Number.number(2).to_i,
#     sugar: Faker::Number.number(2).to_i,
#     protein: Faker::Number.number(2).to_i
#   )
#
#   new_ingredient.category = Category.find(categories.sample)
#   rand(7).times do
#     new_ingredient.salad_bowls.push(SaladBowl.find(salad_bowls.sample))
#   end
#
#   new_ingredient.save
# end



# t.string "name"
# t.integer "calories"
# t.integer "fat"
# t.integer "cholesterol"
# t.integer "sodium"
# t.integer "carbohydrates"
# t.integer "sugar"
# t.integer "protein"



#############
# LOCATIONS #
#############
# create 10 locations
# 10.times do
#   Location.create(
#     city: Faker::Address.unique.city,
#     state: Faker::Address.unique.state,
#     country: 'United States'
#   )
# end




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




###############
# INGREDIENTS #
###############

# categories = Category.all.map { |c| c.id }
# salad_bowls = SaladBowl.all.map { |s| s.id }
#
# # Create 10 Ingredients
# 10.times do
#   new_ingredient = Ingredient.new(
#     name: Faker::Food.ingredient,
#     calories: Faker::Number.number(2).to_i,
#     fat: Faker::Number.number(2).to_i,
#     cholesterol: Faker::Number.number(2).to_i,
#     sodium: Faker::Number.number(2).to_i,
#     carbohydrates: Faker::Number.number(2).to_i,
#     sugar: Faker::Number.number(2).to_i,
#     protein: Faker::Number.number(2).to_i
#   )
#
#   new_ingredient.category = Category.find(categories.sample)
#   rand(7).times do
#     new_ingredient.salad_bowls.push(SaladBowl.find(salad_bowls.sample))
#   end
#
#   new_ingredient.save
# end

##############
# SALAD BARS #
##############

# An array of all the ids for current locations
# loc_ids = Location.all.map { |l| l.id }
#
# 10.times do
#   new_salad_bar = SaladBar.create(
#     name: Faker::Vehicle.unique.manufacture
#   )
#   rand(3).times do
#     new_salad_bar.locations.push(Location.find(loc_ids[rand(loc_ids.length)]))
#   end
# end
