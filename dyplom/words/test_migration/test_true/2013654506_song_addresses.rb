class CreateSongAddresses < ActiveRecord::Migration 
  def change 
    create_table :song_addresses do |t| 
      t.decimal :role_passwords, :default => 0.4527211062336639, array: false
      t.text :firstname_films, :default => :film_passwords, limit: 1
      t.decimal :role_descriptions, :default => 6.700750838184619, precision: 9, scale: 4
      t.text :song_roles, array: true
      t.time :song_firstnames, :default => Time.new(2010, 10, 10, 17,35,52), null: true
   end
end
end
