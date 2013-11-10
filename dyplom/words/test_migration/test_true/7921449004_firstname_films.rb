class CreateFirstnameFilms < ActiveRecord::Migration 
  def change 
    create_table :firstname_films do |t| 
      t.date :address_roles, array: true
      t.time :artist_names, :default => Time.new(2010, 10, 10, 23,54,29), null: false
      t.text :name_countries, :default => :address_songs, array: false
      t.decimal :country_passwords, :default => 5.203184489225606, null: false
      t.timestamp :address_countries, array: true
      t.boolean :artist_artists, :default => false
   end
end
end
