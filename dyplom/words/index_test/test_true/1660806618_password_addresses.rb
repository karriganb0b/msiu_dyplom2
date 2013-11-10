class CreatePasswordAddresses < ActiveRecord::Migration
	 def change
	   create_table :password_addresses do |t|
t.float :song_countries, :default => 1.9558643879449478, null: false
   t.boolean :country_films, :default => true
   t.text :email_roles, array: true
   t.timestamp :password_firstnames, :default => DateTime.new(2004,4,29,2,2,42), null: false
   t.timestamp :country_emails, :default => DateTime.new(2013,4,8,11,27,47), array: false
   t.text :film_artists, :default => :length_firstnames, array: false
   	end
				add_index(:password_addresses, [:country_films, :password_firstnames, :country_emails, :film_artists, :song_countries], :unique => true)
  end 
end
