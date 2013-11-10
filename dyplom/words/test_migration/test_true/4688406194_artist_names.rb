class CreateArtistNames < ActiveRecord::Migration 
  def change 
    create_table :artist_names do |t| 
      t.float :length_films, :default => 3.2010553414291345, null: false
      t.timestamp :artist_lengths, :default => DateTime.new(2001,11,15,8,54,51), null: false
      t.boolean :country_musics, :default => true
      t.string :password_films, :default => "iEgFWjyM", array: false
      t.float :role_films, :default => 8.569978071623472, null: true
      t.float :email_musics, :default => 2.7717957755411415, null: false
      t.time :role_lengths, :default => Time.new(2010, 10, 10, 2,32,24), array: false
   end
end
end
