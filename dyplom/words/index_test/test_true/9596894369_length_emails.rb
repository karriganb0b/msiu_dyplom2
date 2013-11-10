class CreateLengthEmails < ActiveRecord::Migration
	 def change
	   create_table :length_emails do |t|
t.float :password_artists, :default => 3.463503214645777, null: false
   t.decimal :firstname_firstnames, :default => 4.415060466447779, array: false
   t.timestamp :email_addresses, array: true
   t.boolean :artist_countries, :default => true
   t.boolean :name_musics, :default => true
   	end
				add_index(:length_emails, [:email_addresses], :unique => false)
 				add_index(:length_emails, [:name_musics], :unique => false)
  end 
end
