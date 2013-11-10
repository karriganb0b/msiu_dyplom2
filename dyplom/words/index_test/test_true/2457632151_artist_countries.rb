class CreateArtistCountries < ActiveRecord::Migration
	 def change
	   create_table :artist_countries do |t|
t.float :song_emails, :default => 6.243084927465397, null: true
   t.decimal :country_films, :default => 5.158311013934851, precision: 5, scale: 1
   t.text :description_addresses, :default => :country_names, limit: 218
   t.float :length_passwords, :default => 8.451252023307733, null: false
   t.string :country_musics, :default => "QwKfCEBk", array: false
   	end
				add_index(:artist_countries, [:length_passwords], :unique => true)
 				add_index(:artist_countries, [:song_emails], :unique => false)
 				add_index(:artist_countries, [:country_films], :unique => false)
  end 
end
