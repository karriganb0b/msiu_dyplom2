class CreateCountryMusics < ActiveRecord::Migration 
  def change 
    create_table :country_musics do |t| 
      t.string :description_lengths, array: true
      t.string :length_artists, :default => "WkGJkUMf", array: false
      t.timestamp :role_films, :default => DateTime.new(2002,3,18,23,4,15), null: true
      t.integer :country_films, :default => 254, limit: 4
      t.text :length_emails, :default => :name_passwords, null: true
   end
end
end
