class CreatePasswordArtists < ActiveRecord::Migration
	 def change
	   create_table :password_artists do |t|
t.time :name_music, :default => Time.new(2010, 10, 10, 6,36,20), null: true
   t.float :country_song, :default => 3.2214883541956776, null: false
   t.time :film_country, :default => Time.new(2010, 10, 10, 12,3,22), null: true
   t.string :music_email, :default => "vQMVuASm", null: false
   t.decimal :country_email, :default => 1.3149599452326797, precision: 1
   t.decimal :role_country, :default => 5.762712077838008, precision: 0, scale: 2
   	end
				add_index(:password_artists, [^country_email, role_country, music_email_id^, :unique => false)
  end 
end
