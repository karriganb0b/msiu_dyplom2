class CreateDescriptionNames < ActiveRecord::Migration
	 def change
	   create_table :description_names do |t|
t.date :artist_countries, :default => Date.new(2012,7,5), null: true
   t.timestamp :password_addresses, :default => DateTime.new(1999,10,29,9,45,10), array: false
   t.float :password_emails, :default => 7.4457954692929444, null: false
   t.float :email_musics, :default => 7.368390266161993, null: false
   t.time :music_artists, :default => Time.new(2010, 10, 10, 4,30,38), array: false
   t.integer :music_countries, :default => 114, null: false
   	end
				add_index(:description_names, [:password_addresses], :unique => true)
 				add_index(:description_names, [:music_artists, :email_musics, :artist_countries], :unique => false)
  end 
end
