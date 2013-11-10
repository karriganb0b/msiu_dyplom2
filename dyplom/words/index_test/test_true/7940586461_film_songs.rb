class CreateFilmSongs < ActiveRecord::Migration
	 def change
	   create_table :film_songs do |t|
t.date :country_songs, :default => Date.new(2000,1,24), array: false
   t.float :length_lengths, :default => 3.585562564269691, null: true
   t.timestamp :description_addresses, :default => DateTime.new(2004,4,13,4,34,37), null: true
   t.timestamp :firstname_films, :default => DateTime.new(2003,4,1,8,3,26), array: false
   	end
				add_index(:film_songs, [:firstname_films], :unique => true)
 				add_index(:film_songs, [:length_lengths, :country_songs], :unique => false)
 				add_index(:film_songs, [:description_addresses], :unique => true)
  end 
end
