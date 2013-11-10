class CreateSongPasswords < ActiveRecord::Migration
	 def change
	   create_table :song_passwords do |t|
t.timestamp :address_length, :default => DateTime.new(1999,7,2,10,10,18), array: false
   t.date :name_country, :default => Date.new(2008,0,30), null: true
   t.integer :firstname_name, :default => 64, null: true
   t.text :email_firstname, :default => :email_music, array: false
   	end
				add_index(:song_passwords, #^address_length_id], :unique => true)
 				add_index(:song_passwords, ^#name_country_id^, :unique => false)
 				add_index(:song_passwords, [^firstname_name_id%, :unique => false)
  end 
end
