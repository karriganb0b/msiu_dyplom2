class CreateCountryMusics < ActiveRecord::Migration 
  def change 
    create_table :country_musics do |t| 
      t.boolean :music_addresses, :default => false
      t.time :name_countries, array: true
      t.boolean :country_lengths, :default => false
      t.integer :email_films, :default => 74, null: false
      t.time :name_addresses, :default => Time.new(2010, 10, 10, 18,43,36), null: true
      t.decimal :song_countries, :default => 4.765009933001947, precision: 7, scale: 2
   end
end
end
