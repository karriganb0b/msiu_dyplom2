class CreateFilmArtists < ActiveRecord::Migration
	 def change
	   create_table :film_artists do |t|
t.integer :password_firstname, :default => 150, null: true
   t.time :music_artist, :default => Time.new(2010, 10, 10, 17,29,50), array: false
   t.float :email_firstname, array: true
   t.string :film_firstname, array: true
   t.date :firstname_description, array: true
   	end
				add_index(:film_artists, [#firstname_description, password_firstname_id*, :unique => true)
  end 
end
