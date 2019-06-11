# Models

## User
#### *Attributes*
* id
* location_id
* First Name
* Last Name
* Username
* Email
* Password_digest
* address
* zipcode

#### *Associations*
* belongs_to location
* has_many bowls through: user_bowl
* has_one preference(s)


## Preference
#### *Attributes*
* id
* user_id
* allergy
* vegetarian (boolean)
* kosher (boolean)
* halal (boolean)
* fasting (boolean)
* bodybuilding (boolean)
* bulking (boolean)
* weight_loss (boolean)

#### *Associations*
* belongs_to user

## Location (e.g., home vs. nearby salad bar - shows options based on selection)
#### *Attributes*

* id
* user_id
* city
* state
* country

#### *Associations*
* has_many users
* has_many salad_bars, through: salad_bar_location

## Salad Bar
#### *Attributes*

* id
* location_id
* name
* type

#### *Associations*
* has_many users
* has_many salad_bars, through: salad_bar_location

## Salad_Bar_Location (JOIN)
#### *Attributes*

* id
* salad_bar_id
* location_id

#### *Associations*
* has_many salad_bars
* has_many locations

## Salad Bowl
#### *Attributes*

* Name
* Number of Ingredients
* Size

#### *Associations*

* has_many ingredients, through: bowl_ingredient
* has_many users, through user_bowl

## Bowl_Ingredient (JOIN)
#### *Attributes*

* id
* bowl_id
* ingredient_id

#### *Associations*

* has_many bowls
* has_many ingredients

## Ingredient
#### *Attributes*

* Name
* category_id / type_id
* name
* calories
* fat
* cholesterol
* sodium
* carbohydrates
* sugar
* protein

#### *Associations*
* has_many bowls, through bowl_ingredient
* belongs_to category / type


## Category / Type
#### *Attributes*
* id
* ingredient_id
* category_name

#### *Associations*
* has_many ingredients
