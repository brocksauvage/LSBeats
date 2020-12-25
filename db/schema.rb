# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_17_045927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres_tracks", id: false, force: :cascade do |t|
    t.bigint "track_id"
    t.bigint "genre_id"
    t.index ["genre_id"], name: "index_genres_tracks_on_genre_id"
    t.index ["track_id"], name: "index_genres_tracks_on_track_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moods_tracks", id: false, force: :cascade do |t|
    t.bigint "track_id"
    t.bigint "mood_id"
    t.index ["mood_id"], name: "index_moods_tracks_on_mood_id"
    t.index ["track_id"], name: "index_moods_tracks_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.integer "bpm"
    t.boolean "has_vocals"
    t.datetime "release_date"
    t.integer "length"
    t.boolean "has_mp3"
    t.boolean "has_wav"
    t.boolean "has_aiff"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tracks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end