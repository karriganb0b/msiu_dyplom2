class CreateRoleArtists < ActiveRecord::Migration 
  def change 
    create_table :role_artists do |t| 
      t.date :address_artists, array: true
      t.text :firstname_names, :default => :firstname_songs, limit: 253
      t.date :music_films, array: true
      t.time :description_roles, :default => Time.new(2010, 10, 10, 8,52,18), null: true
      t.text :role_songs, array: true
   end
end
end
