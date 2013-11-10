class CreateNameCountries < ActiveRecord::Migration 
  def change 
    create_table :name_countries do |t| 
      t.boolean :country_lengths, :default => false
      t.date :music_descriptions, :default => Date.new(2004,10,24), null: true
      t.float :name_descriptions, array: true
      t.date :length_lengths, array: true
      t.date :song_films, array: true
      t.date :description_artists, :default => Date.new(2008,9,21), array: false
      t.timestamp :firstname_roles, :default => DateTime.new(2003,10,10,22,14,53), null: false
   end
end
end
