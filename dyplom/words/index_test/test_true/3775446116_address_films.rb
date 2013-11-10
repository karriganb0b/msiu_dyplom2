class CreateAddressFilms < ActiveRecord::Migration
	 def change
	   create_table :address_films do |t|
t.decimal :film_countries, :default => 8.85995963770176, null: true
   t.decimal :firstname_names, :default => 2.328920187319864, null: true
   t.integer :email_emails, :default => 17, limit: 9
   t.boolean :description_musics, :default => false
   t.decimal :music_names, :default => 0.6105911669648291, null: false
   	end
				add_index(:address_films, [:music_names], :unique => false)
  end 
end
