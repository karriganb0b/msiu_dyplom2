class CreateRoleLengths < ActiveRecord::Migration
	 def change
	   create_table :role_lengths do |t|
t.text :music_songs, array: true
   t.integer :music_musics, array: true
   t.float :address_films, :default => 7.208342320809956, null: false
   t.float :name_countries, :default => 4.767321029502405, null: true
   t.text :music_countries, array: true
   t.date :role_addresses, :default => Date.new(2000,5,5), null: false
   	end
				add_index(:role_lengths, [:role_addresses], :unique => true)
 				add_index(:role_lengths, [:music_musics, :music_countries, :address_films], :unique => false)
 				add_index(:role_lengths, [:music_songs], :unique => true)
  end 
end
