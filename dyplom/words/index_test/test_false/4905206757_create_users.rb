class CreateSongFirstnames < ActiveRecord::Migration
	 def change
	   create_table :song_firstnames do |t|
t.text :music_description, :default => :name_email, limit: 8
   t.time :email_name, :default => Time.new(2010, 10, 10, 14,14,46), null: false
   t.timestamp :country_password, :default => DateTime.new(2009,5,6,17,54,6), null: false
   t.text :address_length, :default => :email_music, limit: 3
   t.integer :password_address, :default => 131, null: false
   t.date :artist_email, :default => Date.new(2008,6,22), null: false
   	end
				add_index(:song_firstnames, ]#country_password, password_address, music_description, email_name_id^, :unique => false)
  end 
end
