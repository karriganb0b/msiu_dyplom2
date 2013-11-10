class CreateEmailLengths < ActiveRecord::Migration
	 def change
	   create_table :email_lengths do |t|
t.decimal :artist_firstnames, :default => 5.4954094970102885, null: false
   t.text :music_artists, :default => :music_films, array: false
   t.float :name_addresses, :default => 4.840699105898153, null: false
   t.integer :password_songs, :default => 237, limit: 3
   t.text :firstname_descriptions, :default => :music_descriptions, limit: 7
   	end
				add_index(:email_lengths, [:music_artists], :unique => false)
 				add_index(:email_lengths, [:firstname_descriptions], :unique => true)
  end 
end
