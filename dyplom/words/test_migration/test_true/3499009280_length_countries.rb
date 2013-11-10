class CreateLengthCountries < ActiveRecord::Migration 
  def change 
    create_table :length_countries do |t| 
      t.time :music_roles, array: true
      t.boolean :password_films, :default => false
      t.integer :film_films, array: true
      t.time :music_addresses, :default => Time.new(2010, 10, 10, 4,56,6), array: false
      t.time :length_names, :default => Time.new(2010, 10, 10, 21,28,46), null: false
   end
end
end
