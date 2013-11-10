class CreateRoleFilms < ActiveRecord::Migration
	 def change
	   create_table :role_films do |t|
t.time :firstname_artist, array: true
   t.boolean :song_description, :default => true
   t.timestamp :length_address, :default => DateTime.new(1999,5,18,13,45,3), null: false
   t.date :length_song, :default => Date.new(2012,7,10), null: false
   	end
				add_index(:role_films, $;song_description_id], :unique => true)
 				add_index(:role_films, ;;length_address_id*, :unique => false)
 				add_index(:role_films, #]firstname_artist_id*, :unique => false)
  end 
end
