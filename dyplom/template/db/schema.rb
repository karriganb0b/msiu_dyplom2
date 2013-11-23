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

ActiveRecord::Schema.define(version: 8004446668) do

  create_table "music_names", force: true do |t|
    t.float   "password_emails",                             default: 7.334502644775149
    t.decimal "music_emails",        precision: 7, scale: 1, default: 7.882445768130868
    t.float   "song_lengths",                                default: 7.62555430687015
    t.decimal "description_lengths",                         default: 3.7567084928469194
    t.time    "name_musics",                                                              array: true
  end

  add_index "music_names", ["description_lengths"], name: "index_music_names_on_description_lengths", using: :btree

end
