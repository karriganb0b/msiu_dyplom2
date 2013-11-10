class CreateLengthSongs < ActiveRecord::Migration
	 def change
	   create_table :length_songs do |t|
t.timestamp :password_films, :default => DateTime.new(2009,3,9,11,54,30), null: false
   t.integer :firstname_names, :default => 205, limit: 4
   t.decimal :email_firstnames, :default => 5.368361013616653, precision: 8, scale: 3
   t.float :description_descriptions, :default => 0.1220805547649294, array: false
   t.date :country_musics, :default => Date.new(2005,0,1), null: false
   t.boolean :music_firstnames, :default => true
   	end
				add_index(:length_songs, [:password_films, :music_firstnames], :unique => true)
 				add_index(:length_songs, [:description_descriptions, :firstname_names], :unique => true)
 				add_index(:length_songs, [:email_firstnames], :unique => true)
  end 
end
