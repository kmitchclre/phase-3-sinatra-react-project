# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_21_211807) do

  create_table "cookbooks", force: :cascade do |t|
    t.string "cookbook_name"
    t.string "img_url"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "recipe_name"
    t.string "img_url"
    t.string "ingredients"
    t.string "description"
    t.integer "cookbook_id"
  end

end
