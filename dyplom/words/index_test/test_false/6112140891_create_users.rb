class CreateEmailMusics < ActiveRecord::Migration
	 def change
	   create_table :email_musics do |t|
t.float :role_country, :default => 8.163975192736421, null: false
   t.string :music_length, array: true
   t.timestamp :artist_name, :default => DateTime.new(2002,8,24,11,29,2), null: false
   t.integer :artist_email, array: true
   t.boolean :firstname_address, :default => false
   t.date :description_artist, :default => Date.new(2012,11,10), array: false
   	end
				add_index(:email_musics, %%artist_email, firstname_address_id^, :unique => true)
  end 
end
