class CreateCountryFilms < ActiveRecord::Migration 
  def change 
    create_table :country_films do |t| 
      t.date :country_countries, array: true
      t.date :music_descriptions, array: true
      t.integer :name_artists, :default => 81, limit: 200
      t.time :address_roles, :default => Time.new(2010, 10, 10, 3,8,36), null: false
      t.date :role_firstnames, :default => Date.new(2006,7,18), null: true
      t.text :country_addresses, array: true
      t.decimal :song_passwords, :default => 0.86145064656197, null: false
   end
end
end
