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

ActiveRecord::Schema.define(version: 20160511122907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.datetime "dueDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.string   "founder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "shortDesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_campaign_products", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_campaign_id"
    t.integer  "product_id"
  end

  add_index "user_campaign_products", ["product_id"], name: "index_user_campaign_products_on_product_id", using: :btree
  add_index "user_campaign_products", ["user_campaign_id"], name: "index_user_campaign_products_on_user_campaign_id", using: :btree

  create_table "user_campaigns", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.integer  "role_id"
  end

  add_index "user_campaigns", ["campaign_id"], name: "index_user_campaigns_on_campaign_id", using: :btree
  add_index "user_campaigns", ["role_id"], name: "index_user_campaigns_on_role_id", using: :btree
  add_index "user_campaigns", ["user_id"], name: "index_user_campaigns_on_user_id", using: :btree

  create_table "user_groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "role_id"
  end

  add_index "user_groups", ["group_id"], name: "index_user_groups_on_group_id", using: :btree
  add_index "user_groups", ["role_id"], name: "index_user_groups_on_role_id", using: :btree
  add_index "user_groups", ["user_id"], name: "index_user_groups_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_campaign_products", "products"
  add_foreign_key "user_campaign_products", "user_campaigns"
  add_foreign_key "user_campaigns", "campaigns"
  add_foreign_key "user_campaigns", "roles"
  add_foreign_key "user_campaigns", "users"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "roles"
  add_foreign_key "user_groups", "users"
end