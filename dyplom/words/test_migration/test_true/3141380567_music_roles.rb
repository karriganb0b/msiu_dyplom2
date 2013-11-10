class CreateMusicRoles < ActiveRecord::Migration 
  def change 
    create_table :music_roles do |t| 
      t.timestamp :country_firstnames, :default => DateTime.new(2004,11,5,22,40,51), array: false
      t.decimal :password_lengths, :default => 3.883066688930062, precision: 11, scale: 4
      t.timestamp :password_emails, :default => DateTime.new(1999,6,15,21,7,27), null: false
      t.integer :artist_descriptions, :default => 0, limit: 1
      t.float :name_lengths, array: true
      t.timestamp :film_lengths, :default => DateTime.new(1999,7,4,15,59,25), null: false
      t.decimal :description_countries, :default => 8.432380500856457, precision: 10, scale: 5
   end
end
end
