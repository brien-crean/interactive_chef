# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151216215916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["recipe_id"], name: "index_comments_on_recipe_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "includings", force: :cascade do |t|
    t.float    "amount"
    t.string   "measure_type"
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "includings", ["ingredient_id"], name: "index_includings_on_ingredient_id", using: :btree
  add_index "includings", ["recipe_id"], name: "index_includings_on_recipe_id", using: :btree

  create_table "ingredient_scrapes", force: :cascade do |t|
    t.string   "ingredient"
    t.integer  "recipe_scrape_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ingredient_scrapes", ["recipe_scrape_id"], name: "index_ingredient_scrapes_on_recipe_scrape_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_scrapes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.integer  "cook_time"
    t.integer  "prep_time"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recipe_scrapes", ["user_id"], name: "index_recipe_scrapes_on_user_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "cook_time"
    t.integer  "prep_time"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
    t.integer  "serving_size"
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id", using: :btree

  create_table "step_scrapes", force: :cascade do |t|
    t.text     "body"
    t.integer  "recipe_scrape_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "step_scrapes", ["recipe_scrape_id"], name: "index_step_scrapes_on_recipe_scrape_id", using: :btree

  create_table "steps", force: :cascade do |t|
    t.text     "body"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "steps", ["recipe_id"], name: "index_steps_on_recipe_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["recipe_id"], name: "index_taggings_on_recipe_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "comments", "recipes"
  add_foreign_key "comments", "users"
  add_foreign_key "includings", "ingredients"
  add_foreign_key "includings", "recipes"
  add_foreign_key "ingredient_scrapes", "recipe_scrapes"
  add_foreign_key "recipe_scrapes", "users"
  add_foreign_key "recipes", "users"
  add_foreign_key "step_scrapes", "recipe_scrapes"
  add_foreign_key "steps", "recipes"
  add_foreign_key "taggings", "recipes"
  add_foreign_key "taggings", "tags"
end
