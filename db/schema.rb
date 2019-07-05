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

ActiveRecord::Schema.define(version: 2019_07_05_081032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bowl_ingredients", force: :cascade do |t|
    t.bigint "salad_bowl_id"
    t.bigint "ingredient_id"
    t.index ["ingredient_id"], name: "index_bowl_ingredients_on_ingredient_id"
    t.index ["salad_bowl_id"], name: "index_bowl_ingredients_on_salad_bowl_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "cities", force: :cascade do |t|
    t.string "long_name"
    t.string "short_name"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "long_name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "category_id"
    t.string "name"
    t.integer "calories"
    t.integer "fat"
    t.integer "cholesterol"
    t.integer "sodium"
    t.integer "carbohydrates"
    t.integer "sugar"
    t.integer "protein"
    t.index ["category_id"], name: "index_ingredients_on_category_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "country"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "name"
  end

  create_table "preferences", force: :cascade do |t|
    t.bigint "user_id"
    t.string "allergy"
    t.boolean "vegetarian"
    t.boolean "kosher"
    t.boolean "halal"
    t.boolean "fasting"
    t.boolean "bodybuilding"
    t.boolean "bulkin"
    t.boolean "weight_loss"
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "salad_bar_locations", force: :cascade do |t|
    t.bigint "salad_bar_id"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_salad_bar_locations_on_location_id"
    t.index ["salad_bar_id"], name: "index_salad_bar_locations_on_salad_bar_id"
  end

  create_table "salad_bars", force: :cascade do |t|
    t.string "name"
  end

  create_table "salad_bowls", force: :cascade do |t|
    t.string "name"
    t.boolean "favorite"
    t.string "meal_time_frame"
  end

  create_table "states", force: :cascade do |t|
    t.string "long_name"
    t.string "short_name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "user_bowls", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "salad_bowl_id"
    t.index ["salad_bowl_id"], name: "index_user_bowls_on_salad_bowl_id"
    t.index ["user_id"], name: "index_user_bowls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "location_id"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.string "zipcode"
    t.index ["location_id"], name: "index_users_on_location_id"
  end

end
