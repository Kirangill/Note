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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170117054852) do

  create_table "application_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "recipient_id", limit: 4
    t.integer  "sender_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "factories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "location",   limit: 255
    t.integer  "model_id",   limit: 4
=======
ActiveRecord::Schema.define(version: 20161220093251) do

  create_table "notes", force: :cascade do |t|
    t.string   "name",       limit: 255
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

<<<<<<< HEAD
  add_index "factories", ["model_id"], name: "index_factories_on_model_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body",            limit: 65535
    t.integer  "model_id",        limit: 4
    t.integer  "conversation_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["model_id"], name: "index_messages_on_model_id", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "subdomain",  limit: 255
    t.string   "content",    limit: 255
    t.integer  "factory_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "products", ["factory_id"], name: "index_products_on_factory_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "factories", "models"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "models"
  add_foreign_key "products", "factories"
=======
  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "price",                  precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "note",       limit: 255
  end

>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
end
