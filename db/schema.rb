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

ActiveRecord::Schema.define(version: 20170831062639) do

  create_table "property_rentals", force: :cascade do |t|
    t.string   "name"
    t.text     "address_line1"
    t.text     "address_line2"
    t.string   "property_type"
    t.integer  "property_size"
    t.text     "description"
    t.integer  "rental_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end