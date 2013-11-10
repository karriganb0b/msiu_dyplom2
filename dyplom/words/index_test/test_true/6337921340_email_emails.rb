class CreateEmailEmails < ActiveRecord::Migration
	 def change
	   create_table :email_emails do |t|
t.float :film_films, array: true
   t.timestamp :artist_firstnames, :default => DateTime.new(1999,7,27,11,9,54), null: true
   t.time :film_passwords, :default => Time.new(2010, 10, 10, 0,48,59), null: true
   t.string :music_passwords, :default => "oqIYcgQl", null: true
   t.decimal :firstname_roles, :default => 7.204587881369171, null: true
   t.text :film_emails, :default => :firstname_addresses, limit: 1
   	end
				add_index(:email_emails, [:film_emails, :film_films, :artist_firstnames], :unique => true)
  end 
end
