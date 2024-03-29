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

ActiveRecord::Schema.define(version: 20160521042015) do

  create_table "abavilities", force: :cascade do |t|
    t.integer  "pharmacy_id"
    t.integer  "medicine_id"
    t.boolean  "stock"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "abavilities", ["medicine_id"], name: "index_abavilities_on_medicine_id"
  add_index "abavilities", ["pharmacy_id"], name: "index_abavilities_on_pharmacy_id"

  create_table "firebases", force: :cascade do |t|
    t.string   "token"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "firebases", ["user_id"], name: "index_firebases_on_user_id"

  create_table "medicines", force: :cascade do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.text     "indicaciones"
    t.string   "laboratorio"
    t.string   "composicion"
    t.text     "posologia"
    t.text     "detalle"
    t.string   "efectos_colaterales"
    t.string   "contraendicaciones"
    t.string   "observaciones"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "prince_id"
  end

  add_index "medicines", ["prince_id"], name: "index_medicines_on_prince_id"

  create_table "petitions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "pharmacy_id"
    t.integer  "medicine_id"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.decimal  "price"
  end

  add_index "petitions", ["medicine_id"], name: "index_petitions_on_medicine_id"
  add_index "petitions", ["pharmacy_id"], name: "index_petitions_on_pharmacy_id"
  add_index "petitions", ["user_id"], name: "index_petitions_on_user_id"

  create_table "pharmacies", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.string   "ubicacion"
    t.string   "codigo"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "popular"
    t.boolean  "status"
  end

  add_index "pharmacies", ["email"], name: "index_pharmacies_on_email", unique: true
  add_index "pharmacies", ["reset_password_token"], name: "index_pharmacies_on_reset_password_token", unique: true

  create_table "princes", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fcm"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true

end
