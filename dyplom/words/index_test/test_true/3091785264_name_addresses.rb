class CreateNameAddresses < ActiveRecord::Migration
	 def change
	   create_table :name_addresses do |t|
t.integer :role_songs, :default => 191, limit: 1
   t.decimal :role_passwords, :default => 1.7945042802420792, null: false
   t.boolean :name_artists, :default => true
   t.text :song_roles, :default => :length_countries, limit: 1
   t.integer :role_firstnames, :default => 245, null: false
   	end
				add_index(:name_addresses, [:role_passwords, :role_songs, :name_artists, :role_firstnames], :unique => true)
  end 
end
