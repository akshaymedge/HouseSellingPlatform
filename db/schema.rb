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

ActiveRecord::Schema.define(version: 20181005171130) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "househunters", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "phone"
    t.string "contactmethod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer "houseId"
    t.integer "companyId"
    t.string "location"
    t.integer "squarefootage"
    t.integer "yearbuilt"
    t.string "style"
    t.integer "listprice"
    t.integer "nooffloors"
    t.boolean "basement"
    t.string "currentHouseOwner"
    t.string "contactInfo"
    t.string "potentialBuyers"
    t.integer "realestatecompany_id"
    t.integer "realtor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["realestatecompany_id"], name: "index_houses_on_realestatecompany_id"
    t.index ["realtor_id"], name: "index_houses_on_realtor_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "InquiryId"
    t.integer "UserId"
    t.string "Subject"
    t.text "MessageContent"
    t.integer "househunter_id"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_inquiries_on_house_id"
    t.index ["househunter_id"], name: "index_inquiries_on_househunter_id"
  end

  create_table "realestatecompanies", force: :cascade do |t|
    t.integer "companyid"
    t.string "name"
    t.string "website"
    t.string "address"
    t.string "size"
    t.integer "founded"
    t.string "revenue"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realtors", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.integer "companyid"
    t.integer "realestatecompany_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["realestatecompany_id"], name: "index_realtors_on_realestatecompany_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.string "role"
    t.integer "companyid"
    t.string "phone"
    t.string "contactmethod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
