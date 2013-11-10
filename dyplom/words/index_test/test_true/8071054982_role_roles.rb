class CreateRoleRoles < ActiveRecord::Migration
	 def change
	   create_table :role_roles do |t|
t.decimal :film_musics, :default => 8.130007307316113, precision: 8, scale: 4
   t.date :name_films, :default => Date.new(2013,5,26), array: false
   t.boolean :role_emails, :default => false
   t.date :artist_emails, :default => Date.new(2009,2,3), null: false
   	end
				add_index(:role_roles, [:artist_emails], :unique => true)
  end 
end
