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

ActiveRecord::Schema.define(version: 20160526150136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "apps", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "apps", ["platform_id"], name: "index_apps_on_platform_id", using: :btree
  add_index "apps", ["user_id"], name: "index_apps_on_user_id", using: :btree

  create_table "apps_categories", id: false, force: :cascade do |t|
    t.integer "app_id"
    t.integer "category_id"
  end

  add_index "apps_categories", ["app_id"], name: "index_apps_categories_on_app_id", using: :btree
  add_index "apps_categories", ["category_id"], name: "index_apps_categories_on_category_id", using: :btree

  create_table "campaigns", force: :cascade do |t|
    t.integer  "app_id"
    t.integer  "version_id"
    t.string   "operator"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "count_demonstration"
  end

  add_index "campaigns", ["app_id"], name: "index_campaigns_on_app_id", using: :btree
  add_index "campaigns", ["version_id"], name: "index_campaigns_on_version_id", using: :btree

  create_table "campaigns_categories", id: false, force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "category_id"
  end

  add_index "campaigns_categories", ["campaign_id"], name: "index_campaigns_categories_on_campaign_id", using: :btree
  add_index "campaigns_categories", ["category_id"], name: "index_campaigns_categories_on_category_id", using: :btree

  create_table "campaigns_countries", id: false, force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "country_id"
  end

  add_index "campaigns_countries", ["campaign_id"], name: "index_campaigns_countries_on_campaign_id", using: :btree
  add_index "campaigns_countries", ["country_id"], name: "index_campaigns_countries_on_country_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creatives", force: :cascade do |t|
    t.integer  "type"
    t.integer  "campaign_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
  end

  add_index "creatives", ["campaign_id"], name: "index_creatives_on_campaign_id", using: :btree

  create_table "platforms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.integer  "campaign_id"
    t.integer  "creative_id"
    t.integer  "act"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "statistics", ["campaign_id"], name: "index_statistics_on_campaign_id", using: :btree
  add_index "statistics", ["creative_id"], name: "index_statistics_on_creative_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apps", "platforms"
  add_foreign_key "apps", "users"
  add_foreign_key "apps_categories", "apps"
  add_foreign_key "apps_categories", "categories"
  add_foreign_key "campaigns", "apps"
  add_foreign_key "campaigns", "versions"
  add_foreign_key "campaigns_categories", "campaigns"
  add_foreign_key "campaigns_categories", "categories"
  add_foreign_key "campaigns_countries", "campaigns"
  add_foreign_key "campaigns_countries", "countries"
  add_foreign_key "creatives", "campaigns"
  add_foreign_key "statistics", "campaigns"
end
