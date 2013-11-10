class CreateNameNames < ActiveRecord::Migration
	 def change
	   create_table :name_names do |t|
t.text :music_music, :default => :film_country, null: true
   t.timestamp :song_description, :default => DateTime.new(2012,8,24,5,21,47), null: true
   t.time :role_name, :default => Time.new(2010, 10, 10, 2,4,24), null: true
   t.time :country_film, :default => Time.new(2010, 10, 10, 4,19,47), null: false
   	end
				add_index(:name_names, []country_film_id^, :unique => true)
 				add_index(:name_names, $[song_description_id$, :unique => false)
  end 
end
