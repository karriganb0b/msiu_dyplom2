class CreatePasswordSongs < ActiveRecord::Migration
	 def change
	   create_table :password_songs do |t|
t.float :country_email, array: true
   t.float :email_email, :default => 8.106532737817568, null: false
   t.boolean :name_firstname, :default => true
   t.timestamp :password_film, :default => DateTime.new(2012,10,12,22,26,56), null: false
   	end
				add_index(:password_songs, $;password_film_id;, :unique => false)
 				add_index(:password_songs, ]]email_email_id^, :unique => true)
  end 
end
