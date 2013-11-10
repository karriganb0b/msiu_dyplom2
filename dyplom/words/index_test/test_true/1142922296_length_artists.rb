class CreateLengthArtists < ActiveRecord::Migration
	 def change
	   create_table :length_artists do |t|
t.integer :length_musics, :default => 148, null: false
   t.date :name_artists, :default => Date.new(2008,6,25), null: true
   t.time :length_addresses, :default => Time.new(2010, 10, 10, 13,14,2), array: false
   t.text :description_descriptions, :default => :address_firstnames, null: true
   t.timestamp :password_musics, :default => DateTime.new(2008,3,11,23,41,52), null: true
   t.time :length_artists, :default => Time.new(2010, 10, 10, 4,57,45), null: true
   	end
				add_index(:length_artists, [:name_artists, :length_artists, :length_musics, :length_addresses], :unique => false)
  end 
end
