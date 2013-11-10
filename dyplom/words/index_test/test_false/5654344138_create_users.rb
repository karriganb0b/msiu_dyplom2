class CreateFilmArtists < ActiveRecord::Migration
	 def change
	   create_table :film_artists do |t|
t.boolean :country_length, :default => false
   t.text :country_role, :default => :firstname_name, null: true
   t.timestamp :role_firstname, :default => DateTime.new(2013,9,29,3,57,19), null: false
   t.integer :artist_firstname, array: true
   	end
				add_index(:film_artists, ;^country_role, role_firstname_id$, :unique => false)
  end 
end
