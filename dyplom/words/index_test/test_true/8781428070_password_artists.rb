class CreatePasswordArtists < ActiveRecord::Migration
	 def change
	   create_table :password_artists do |t|
t.boolean :artist_lengths, :default => false
   t.decimal :address_musics, :default => 8.97980041180696, precision: 7, scale: 5
   t.decimal :firstname_films, array: true
   t.timestamp :firstname_films, :default => DateTime.new(2003,4,6,23,28,5), null: true
   t.integer :firstname_countries, :default => 67, array: false
   	end
				add_index(:password_artists, [:firstname_countries], :unique => true)
 				add_index(:password_artists, [:address_musics, :artist_lengths], :unique => false)
  end 
end
