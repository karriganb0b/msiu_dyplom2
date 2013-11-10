class CreateFilmDescriptions < ActiveRecord::Migration
	 def change
	   create_table :film_descriptions do |t|
t.float :music_addresses, array: true
   t.boolean :song_addresses, :default => false
   t.timestamp :music_lengths, array: true
   t.boolean :song_roles, :default => false
   t.decimal :name_addresses, :default => 0.6076195634080013, null: false
   	end
				add_index(:film_descriptions, [:music_lengths], :unique => true)
 				add_index(:film_descriptions, [:song_roles], :unique => true)
 				add_index(:film_descriptions, [:song_addresses, :name_addresses], :unique => true)
  end 
end
