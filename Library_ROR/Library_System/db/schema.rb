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

ActiveRecord::Schema.define(version: 20161123190809) do

  create_table "cardholder_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "cardholder_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cardholder_personal_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.integer  "phone_num"
    t.integer  "home_num"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "cardholder_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "checkouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "date"
    t.date     "due_date"
    t.integer  "checkout_id"
    t.integer  "cardholder_id"
    t.integer  "staff_member_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "date_of_fine"
    t.decimal  "amount",        precision: 10
    t.integer  "cardholder_id"
    t.integer  "fine_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "materials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "material_type"
    t.string   "material_classification_id"
    t.string   "material_title"
    t.integer  "quantity_material"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
