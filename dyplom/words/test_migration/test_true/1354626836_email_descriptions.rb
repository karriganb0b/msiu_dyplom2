class CreateEmailDescriptions < ActiveRecord::Migration 
  def change 
    create_table :email_descriptions do |t| 
      t.float :country_countries, array: true
      t.string :artist_names, :default => "PzVZSxtm", limit: 1
      t.decimal :description_countries, array: true
      t.integer :firstname_songs, :default => 48, array: false
      t.float :description_artists, :default => 6.268932855909638, null: false
   end
end
end
