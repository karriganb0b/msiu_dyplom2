class CreateEmailRoles < ActiveRecord::Migration
	 def change
	   create_table :email_roles do |t|
t.integer :length_names, array: true
   t.boolean :artist_roles, :default => false
   t.date :film_artists, :default => Date.new(2013,10,23), null: true
   t.float :artist_lengths, :default => 4.706235081411824, null: true
   	end
				add_index(:email_roles, [:length_names, :artist_lengths], :unique => false)
 				add_index(:email_roles, [:film_artists, :artist_roles], :unique => true)
  end 
end
