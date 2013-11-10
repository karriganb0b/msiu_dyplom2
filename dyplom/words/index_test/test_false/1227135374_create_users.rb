class CreateEmailSongs < ActiveRecord::Migration
	 def change
	   create_table :email_songs do |t|
t.date :role_artist, :default => Date.new(2014,7,29), null: false
   t.timestamp :firstname_address, :default => DateTime.new(2010,3,30,22,39,9), array: false
   t.decimal :film_artist, :default => 7.497006152099901, scale: 0
   t.string :password_name, array: true
   t.time :artist_artist, :default => Time.new(2010, 10, 10, 23,30,58), null: true
   	end
				add_index(:email_songs, *[role_artist, firstname_address, film_artist, password_name_id;, :unique => false)
 				add_index(:email_songs, ;;artist_artist_id#, :unique => false)
  end 
end
