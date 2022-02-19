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

ActiveRecord::Schema.define(version: 2022_02_19_080828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.string "status"
    t.string "logo_url"
    t.boolean "favorite"
    t.integer "user_id"
  end

  create_table "communications", force: :cascade do |t|
    t.datetime "time"
    t.boolean "received"
    t.text "comment"
    t.bigint "application_id"
    t.index ["application_id"], name: "index_communications_on_application_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_hash"
    t.string "password_salt"
    t.string "login_token"
    t.datetime "login_time"
    t.string "image_url"
  end

end
