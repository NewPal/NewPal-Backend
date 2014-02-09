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

ActiveRecord::Schema.define(version: 20140209040255) do

  create_table "messages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "State"
    t.string   "Country"
    t.string   "City"
    t.string   "PhoneNumber"
    t.string   "Zip"
    t.integer  "ClientId"
    t.string   "Body"
  end

  add_index "messages", ["ClientId"], name: "index_messages_on_ClientId"
  add_index "messages", ["Country"], name: "index_messages_on_Country"
  add_index "messages", ["PhoneNumber"], name: "index_messages_on_PhoneNumber"
  add_index "messages", ["State"], name: "index_messages_on_State"
  add_index "messages", ["Zip"], name: "index_messages_on_Zip"

end
