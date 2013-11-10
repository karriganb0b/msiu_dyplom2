class CreateFilmPasswords < ActiveRecord::Migration
	 def change
	   create_table :film_passwords do |t|
t.date :name_firstnames, :default => Date.new(2009,5,12), null: false
   t.integer :film_countries, :default => 114, array: false
   t.string :email_artists, :default => "PlPFDMnn", null: true
   t.boolean :music_artists, :default => true
   	end
				add_index(:film_passwords, [:email_artists], :unique => true)
 				add_index(:film_passwords, [:film_countries], :unique => false)
  end 
end
