# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_14_204922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bowl_ingredients", force: :cascade do |t|
    t.integer "bowl_id"
    t.integer "ingredient_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "bowl_ingredient_id"
    t.integer "category_id"
    t.string "name"
    t.integer "calories"
    t.integer "fat"
    t.integer "cholesterol"
    t.integer "sodium"
    t.integer "carbohydrates"
    t.integer "sugar"
    t.integer "protein"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "user_id"
    t.string "city"
    t.string "state"
    t.string "country"
  end

  create_table "preferences", force: :cascade do |t|
    t.integer "user_id"
    t.string "allergy"
    t.boolean "vegetarian"
    t.boolean "kosher"
    t.boolean "halal"
    t.boolean "fasting"
    t.boolean "bodybuilding"
    t.boolean "bulkin"
    t.boolean "weight_loss"
  end

  create_table "salad_bar_locations", force: :cascade do |t|
    t.integer "salad_bar_id"
    t.integer "location_id"
  end

  create_table "salad_bars", force: :cascade do |t|
    t.integer "location_id"
    t.string "name"
    t.string "type"
  end

  create_table "salad_bowls", force: :cascade do |t|
    t.string "name"
    t.integer "type_id"
    t.integer "user_bowl_id"
    t.boolean "favorite"
  end

  create_table "user_bowls", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bowl_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "location_id"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.string "zipcode"
  end

end
