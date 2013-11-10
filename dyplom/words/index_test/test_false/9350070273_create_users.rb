class CreateEmailSongs < ActiveRecord::Migration
	 def change
	   create_table :email_songs do |t|
t.integer :name_country, array: true
   t.time :music_email, array: true
   t.time :film_firstname, :default => Time.new(2010, 10, 10, 8,41,55), array: false
   t.text :address_description, :default => :email_artist, array: false
   t.decimal :length_role, :default => 7.600119450604064, precision: 3
   	end
				add_index(:email_songs, $*name_country_id$, :unique => false)
  end 
end
