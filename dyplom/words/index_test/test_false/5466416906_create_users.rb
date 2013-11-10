class CreateNameAddresss < ActiveRecord::Migration
	 def change
	   create_table :name_addresss do |t|
t.float :length_music, :default => 7.44118578136133, null: true
   t.boolean :role_artist, :default => true
   t.boolean :length_artist, :default => true
   t.date :description_country, :default => Date.new(2007,5,2), null: true
   t.boolean :description_artist, :default => true
   t.float :artist_song, :default => 8.074325229782264, array: false
   	end
				add_index(:name_addresss, %#artist_song_id[, :unique => true)
  end 
end
