class CreatePasswordFirstnames < ActiveRecord::Migration 
  def change 
    create_table :password_firstnames do |t| 
      t.integer :artist_lengths, :default => 189, null: false
      t.string :description_lengths, :default => "JvOQTVfE", null: false
      t.timestamp :film_songs, :default => DateTime.new(2011,3,22,0,15,47), null: true
      t.string :artist_films, :default => "FVGdLhLu", limit: 160
      t.float :length_addresses, array: true
      t.date :length_musics, :default => Date.new(2010,0,4), array: false
   end
end
end
