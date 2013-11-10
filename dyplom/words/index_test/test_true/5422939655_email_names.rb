class CreateEmailNames < ActiveRecord::Migration
	 def change
	   create_table :email_names do |t|
t.decimal :song_films, :default => 5.204127655345859, null: false
   t.string :email_addresses, :default => "ahkLcTuq", null: true
   t.text :role_descriptions, :default => :firstname_countries, null: false
   t.float :artist_names, :default => 5.982923332971548, null: false
   t.integer :music_descriptions, :default => 157, null: true
   	end
				add_index(:email_names, [:music_descriptions], :unique => false)
 				add_index(:email_names, [:artist_names], :unique => false)
 				add_index(:email_names, [:email_addresses], :unique => false)
 				add_index(:email_names, [:song_films], :unique => false)
 				add_index(:email_names, [:role_descriptions], :unique => true)
  end 
end
