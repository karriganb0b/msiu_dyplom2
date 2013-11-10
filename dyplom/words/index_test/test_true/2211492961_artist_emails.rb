class CreateArtistEmails < ActiveRecord::Migration
	 def change
	   create_table :artist_emails do |t|
t.date :artist_emails, array: true
   t.decimal :length_roles, :default => 5.501529661930752, null: false
   t.integer :country_passwords, :default => 116, null: true
   t.boolean :length_songs, :default => false
   t.string :name_addresses, :default => "qjufObat", limit: 170
   	end
				add_index(:artist_emails, [:length_roles], :unique => true)
 				add_index(:artist_emails, [:length_songs], :unique => false)
  end 
end
