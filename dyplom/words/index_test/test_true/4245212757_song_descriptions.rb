class CreateSongDescriptions < ActiveRecord::Migration
	 def change
	   create_table :song_descriptions do |t|
t.decimal :country_countries, :default => 6.194858904440327, null: false
   t.date :description_firstnames, :default => Date.new(2001,2,26), array: false
   t.time :address_films, :default => Time.new(2010, 10, 10, 16,22,44), null: true
   t.text :film_musics, :default => :description_lengths, array: false
   	end
				add_index(:song_descriptions, [:address_films], :unique => true)
 				add_index(:song_descriptions, [:country_countries, :description_firstnames], :unique => false)
  end 
end
