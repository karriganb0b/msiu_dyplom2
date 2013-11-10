class CreateEmailFirstnames < ActiveRecord::Migration
	 def change
	   create_table :email_firstnames do |t|
t.text :password_names, :default => :password_names, null: false
   t.text :artist_countries, :default => :password_names, limit: 3
   t.decimal :artist_addresses, :default => 4.129161953935559, null: false
   t.timestamp :firstname_descriptions, :default => DateTime.new(2001,7,7,5,29,48), array: false
   t.string :name_artists, :default => "kvFpjUhM", null: false
   t.float :song_roles, :default => 8.893418144650377, null: false
   	end
				add_index(:email_firstnames, [:name_artists, :firstname_descriptions, :artist_countries], :unique => false)
 				add_index(:email_firstnames, [:artist_addresses], :unique => true)
  end 
end
