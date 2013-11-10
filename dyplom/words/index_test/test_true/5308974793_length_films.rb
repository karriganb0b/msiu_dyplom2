class CreateLengthFilms < ActiveRecord::Migration
	 def change
	   create_table :length_films do |t|
t.text :song_passwords, :default => :music_firstnames, limit: 123
   t.boolean :firstname_roles, :default => false
   t.date :film_passwords, array: true
   t.decimal :address_countries, :default => 2.012577791181922, array: false
   t.string :description_roles, array: true
   t.integer :password_emails, :default => 148, null: true
   	end
				add_index(:length_films, [:firstname_roles, :description_roles, :address_countries], :unique => false)
  end 
end
