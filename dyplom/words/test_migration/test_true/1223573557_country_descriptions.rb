class CreateCountryDescriptions < ActiveRecord::Migration 
  def change 
    create_table :country_descriptions do |t| 
      t.timestamp :firstname_countries, :default => DateTime.new(2006,11,10,22,9,24), array: false
      t.integer :song_countries, :default => 100, limit: 5
      t.decimal :film_lengths, :default => 8.935173149696686, precision: 6, scale: 1
      t.timestamp :artist_passwords, :default => DateTime.new(2013,7,1,21,0,31), null: true
      t.date :address_musics, :default => Date.new(2005,6,1), array: false
   end
end
end
