class CreateDescriptionArtists < ActiveRecord::Migration 
  def change 
    create_table :description_artists do |t| 
      t.string :address_musics, :default => "WJhphEId", array: false
      t.date :address_names, :default => Date.new(2005,2,28), array: false
      t.boolean :country_films, :default => true
      t.timestamp :address_emails, :default => DateTime.new(2009,11,30,11,56,33), array: false
      t.string :description_artists, :default => "DQXXwDnR", limit: 9
      t.text :password_firstnames, :default => :password_names, limit: 1
   end
end
end
