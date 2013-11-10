class CreateLengthDescriptions < ActiveRecord::Migration 
  def change 
    create_table :length_descriptions do |t| 
      t.timestamp :country_addresses, :default => DateTime.new(2004,9,13,9,1,0), null: false
      t.timestamp :music_names, array: true
      t.timestamp :film_lengths, :default => DateTime.new(2007,1,12,18,11,40), array: false
      t.timestamp :password_artists, :default => DateTime.new(2001,1,13,14,36,3), array: false
      t.decimal :artist_artists, :default => 4.81221683853486, precision: 9, scale: 5
      t.boolean :address_musics, :default => true
      t.time :length_countries, :default => Time.new(2010, 10, 10, 20,39,46), null: false
   end
end
end
