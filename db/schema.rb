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

ActiveRecord::Schema.define(version: 20170324084312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "businessmen", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "mobile"
    t.string   "address"
    t.string   "city"
    t.string   "type"
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
    t.index ["email"], name: "index_businessmen_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_businessmen_on_reset_password_token", unique: true, using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "city"
    t.integer  "product_type_id"
    t.json     "images"
    t.integer  "businessman_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "owner_id"
    t.string   "owner_type"
  end

  create_table "reviewers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "name"
    t.string   "mobile"
    t.string   "address"
    t.string   "title"
    t.string   "occupation"
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
    t.index ["email"], name: "index_reviewers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_reviewers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "reviewer_id"
    t.integer  "product_id"
    t.string   "title"
    t.text     "content"
    t.decimal  "rating"
    t.json     "images"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.json     "photos"
  end

end
