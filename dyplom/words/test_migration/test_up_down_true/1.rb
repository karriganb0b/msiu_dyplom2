N
ActiveRecord Migration!!!
N
ActiveRecord Migration!!!
Q

Какой вид приобретёт файл schema.rb после выполнения следующей миграции:
class CreateFirstnameArtists < ActiveRecord::Migration 
  def change 
    create_table :firstname_artists do |t| 
      t.float :name_musics, :default => 5.390238094078168, array: false
      t.decimal :email_firstnames, array: true
      t.float :country_songs, :default => 1.0997145747455486, null: false
      t.time :description_passwords, :default => Time.new(2010, 10, 10, 22,53,35), null: true
      t.decimal :film_roles, :default => 5.771412973808223, precision: 7, scale: 5
      t.text :country_countries, array: true
   end
end
end
F
ActiveRecord::Schema.define(version: 1172496776) do

  create_table "artist_musics", force: true do |t|
    t.float   "name_musics",                                   default: DateTime.new(2000,7,3,0,47,47)
    t.decimal "email_firstnames",                                                                           array: true
    t.float   "country_songs",                                 default: true
    t.time    "description_passwords",                         default: false
    t.decimal "film_roles",            precision: 7, scale: 5, default: 5.771412973808223
    t.text    "country_countries",                                                                          array: true
  end

end
F
ActiveRecord::Schema.define(version: 1172496776) do

  create_table "country_musics", force: true do |t|
    t.float   "name_musics",                                   default: true
    t.decimal "email_firstnames",                                                                           array: true
    t.float   "country_songs",                                 default: true
    t.time    "description_passwords",                         default: 0.105345091200299
    t.decimal "film_roles",            precision: 7, scale: 5, default: 5.771412973808223
    t.text    "country_countries",                                                                          array: true
  end

end
T
ActiveRecord::Schema.define(version: 1172496776) do

  create_table "firstname_artists", force: true do |t|
    t.float   "name_musics",                                   default: 5.390238094078168
    t.decimal "email_firstnames",                                                                           array: true
    t.float   "country_songs",                                 default: 1.0997145747455486,    null: false
    t.time    "description_passwords",                         default: '2000-01-01 18:53:35'
    t.decimal "film_roles",            precision: 7, scale: 5, default: 5.771412973808223
    t.text    "country_countries",                                                                          array: true
  end

end
F
ActiveRecord::Schema.define(version: 1172496776) do

  create_table "firstname_artists", force: true do |t|
    t.float   "name_musics",                                   default: 5.470302764885685
    t.decimal "email_firstnames",                                                                           array: true
    t.float   "country_songs",                                 default: DateTime.new(2012,11,30,23,20,49)
    t.time    "description_passwords",                         default: Date.new(2004,9,14)
    t.decimal "film_roles",            precision: 7, scale: 5, default: 5.771412973808223
    t.text    "country_countries",                                                                          array: true
  end

end
