class CreateMusicPasswords < ActiveRecord::Migration
	 def change
	   create_table :music_passwords do |t|
t.boolean :length_songs, :default => true
   t.date :country_firstnames, :default => Date.new(2003,3,7), null: true
   t.boolean :address_musics, :default => true
   t.boolean :description_passwords, :default => false
   t.string :address_names, :default => "BxTRMFIN", null: false
   t.integer :country_lengths, :default => 24, null: true
   	end
				add_index(:music_passwords, [:country_lengths, :country_firstnames], :unique => false)
  end 
end
