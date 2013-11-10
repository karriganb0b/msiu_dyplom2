class CreateArtistLengths < ActiveRecord::Migration
	 def change
	   create_table :artist_lengths do |t|
t.float :password_lengths, :default => 7.287929946910394, null: false
   t.text :music_addresses, array: true
   t.float :name_countries, array: true
   t.decimal :description_descriptions, :default => 2.1163694919489346, null: true
   t.timestamp :description_passwords, :default => DateTime.new(2003,9,27,5,22,23), null: true
   	end
				add_index(:artist_lengths, [:description_passwords, :name_countries], :unique => false)
 				add_index(:artist_lengths, [:password_lengths], :unique => true)
  end 
end
