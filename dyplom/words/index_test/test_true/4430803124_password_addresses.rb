class CreatePasswordAddresses < ActiveRecord::Migration
	 def change
	   create_table :password_addresses do |t|
t.string :country_films, :default => "CsQimJWd", null: true
   t.timestamp :length_countries, :default => DateTime.new(1999,4,17,15,14,59), array: false
   t.decimal :music_songs, :default => 0.9171327582161226, null: true
   t.boolean :email_passwords, :default => false
   	end
				add_index(:password_addresses, [:length_countries, :email_passwords, :music_songs], :unique => true)
  end 
end
