class CreateCountryMusics < ActiveRecord::Migration 
  def change 
    create_table :country_musics do |t| 
      t.text :password_firstnames, :default => :music_descriptions, null: false
      t.integer :film_roles, :default => 114, limit: 3
      t.decimal :song_roles, :default => 3.0923524336633035, null: true
      t.decimal :firstname_countries, :default => 7.1809068031116166, null: true
      t.date :address_roles, array: true
      t.integer :country_songs, :default => 209, limit: 3
      t.timestamp :name_countries, :default => DateTime.new(2012,1,29,11,21,52), array: false
   end
end
end
