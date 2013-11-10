class CreateArtistDescriptions < ActiveRecord::Migration 
  def change 
    create_table :artist_descriptions do |t| 
      t.date :role_firstnames, :default => Date.new(2010,0,28), array: false
      t.date :film_passwords, :default => Date.new(2008,11,16), null: false
      t.string :password_musics, :default => "YmkoWcNj", limit: 4
      t.float :firstname_names, :default => 3.2138121270047844, null: false
      t.boolean :music_films, :default => false
      t.time :role_firstnames, :default => Time.new(2010, 10, 10, 12,6,41), null: true
   end
end
end
