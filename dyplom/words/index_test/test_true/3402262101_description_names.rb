class CreateDescriptionNames < ActiveRecord::Migration
	 def change
	   create_table :description_names do |t|
t.time :role_descriptions, array: true
   t.boolean :country_artists, :default => false
   t.date :song_roles, :default => Date.new(2001,4,16), null: false
   t.string :music_descriptions, :default => "ieLZTWsO", limit: 4
   t.integer :film_passwords, :default => 43, null: false
   	end
				add_index(:description_names, [:music_descriptions], :unique => true)
 				add_index(:description_names, [:film_passwords, :song_roles, :country_artists], :unique => true)
  end 
end
