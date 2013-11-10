class CreateCountryFilms < ActiveRecord::Migration 
  def change 
    create_table :country_films do |t| 
      t.decimal :name_addresses, array: true
      t.integer :artist_firstnames, :default => 112, null: true
      t.integer :password_films, :default => 155, array: false
      t.decimal :address_descriptions, :default => 0.3301251859864607, precision: 7, scale: 3
      t.timestamp :email_musics, :default => DateTime.new(2002,11,5,17,48,10), null: true
      t.string :role_roles, :default => "ofaYIden", null: false
   end
end
end
