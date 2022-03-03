# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_02_200957) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_groups", force: :cascade do |t|
    t.bigint "contact_id"
    t.bigint "group_id"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_contact_groups_on_contact_id"
    t.index ["group_id"], name: "index_contact_groups_on_group_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "title"
    t.string "work_email"
    t.string "personal_email"
    t.string "mobile_phone"
    t.string "other_phone"
    t.string "salesforce_id"
    t.string "linkedin"
    t.string "twitter"
    t.string "instagram"
    t.string "youtube"
    t.string "country"
    t.string "referrer"
    t.string "mailing_address"
    t.string "gender"
    t.string "race"
    t.string "last_meeting"
    t.string "last_person_to_meet"
    t.string "last_email"
    t.string "last_person_to_email"
    t.integer "country_code"
    t.boolean "unicorn"
    t.boolean "founder"
    t.boolean "ceo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
