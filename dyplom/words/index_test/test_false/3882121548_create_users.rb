class CreateNameNames < ActiveRecord::Migration
	 def change
	   create_table :name_names do |t|
t.integer :firstname_length, :default => 233, limit: 9
   t.timestamp :music_song, :default => DateTime.new(2012,4,9,11,2,56), array: false
   t.integer :firstname_country, :default => 197, limit: 1
   t.float :email_description, :default => 7.6169006114597835, array: false
   t.float :length_song, array: true
   	end
				add_index(:name_names, ;;firstname_length, length_song_id*, :unique => true)
 				add_index(:name_names, [;music_song_id*, :unique => true)
 				add_index(:name_names, ^#email_description_id$, :unique => false)
  end 
end
