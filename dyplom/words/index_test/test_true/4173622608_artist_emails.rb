class CreateArtistEmails < ActiveRecord::Migration
	 def change
	   create_table :artist_emails do |t|
t.decimal :name_artists, :default => 2.0472477196399517, precision: 7, scale: 1
   t.time :role_firstnames, array: true
   t.decimal :name_addresses, :default => 8.3341155460809, array: false
   t.timestamp :length_names, :default => DateTime.new(2008,8,3,16,50,16), null: false
   t.string :password_songs, array: true
   	end
				add_index(:artist_emails, [:length_names, :name_artists, :name_addresses], :unique => true)
  end 
end
