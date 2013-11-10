class CreateArtistFilms < ActiveRecord::Migration
	 def change
	   create_table :artist_films do |t|
t.string :length_film, :default => "IdbSRWZA", null: false
   t.text :password_song, array: true
   t.string :name_role, :default => "QdcTktMV", null: false
   t.timestamp :description_music, :default => DateTime.new(2012,1,19,6,11,4), null: false
   t.float :country_artist, :default => 4.14106930946994, null: false
   	end
				add_index(:artist_films, #[description_music, name_role_id;, :unique => false)
 				add_index(:artist_films, *#password_song, country_artist_id*, :unique => true)
  end 
end
