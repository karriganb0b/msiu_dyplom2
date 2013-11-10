class CreateLengthSongs < ActiveRecord::Migration
	 def change
	   create_table :length_songs do |t|
t.float :email_music, array: true
   t.decimal :name_email, :default => 1.70078587088015, scale: 1
   t.integer :name_music, :default => 37, null: true
   t.text :address_music, array: true
   	end
				add_index(:length_songs, ^]address_music_id[, :unique => false)
 				add_index(:length_songs, ;]email_music, name_music_id^, :unique => false)
 				add_index(:length_songs, #*name_email_id^, :unique => true)
  end 
end
