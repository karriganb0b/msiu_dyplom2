class CreateAddressMusics < ActiveRecord::Migration 
  def change 
    create_table :address_musics do |t| 
      t.time :film_songs, :default => Time.new(2010, 10, 10, 4,57,30), null: false
      t.date :artist_descriptions, :default => Date.new(2002,1,20), array: false
      t.decimal :description_roles, :default => 1.8257678181370283, precision: 7, scale: 3
      t.text :email_films, :default => :firstname_firstnames, null: true
      t.boolean :password_musics, :default => true
      t.boolean :country_roles, :default => false
      t.integer :length_addresses, :default => 82, limit: 3
   end
end
end
