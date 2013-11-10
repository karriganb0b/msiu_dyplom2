class CreateLengthNames < ActiveRecord::Migration
	 def change
	   create_table :length_names do |t|
t.float :role_descriptions, :default => 0.07796421489084349, array: false
   t.text :email_descriptions, :default => :music_names, array: false
   t.time :artist_descriptions, :default => Time.new(2010, 10, 10, 14,37,24), null: true
   t.date :artist_passwords, :default => Date.new(2005,0,26), array: false
   t.string :song_films, :default => "zVhqipZb", limit: 213
   	end
				add_index(:length_names, [:artist_descriptions, :email_descriptions, :role_descriptions, :song_films, :artist_passwords], :unique => false)
  end 
end
