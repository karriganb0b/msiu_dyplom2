class CreateDescriptionSongs < ActiveRecord::Migration
	 def change
	   create_table :description_songs do |t|
t.date :description_descriptions, :default => Date.new(2003,11,20), null: false
   t.integer :music_names, array: true
   t.decimal :film_musics, array: true
   t.decimal :name_descriptions, :default => 1.9311496987397387, precision: 3, scale: 1
   t.timestamp :firstname_firstnames, array: true
   t.integer :email_descriptions, array: true
   	end
				add_index(:description_songs, [:email_descriptions, :description_descriptions], :unique => false)
  end 
end
