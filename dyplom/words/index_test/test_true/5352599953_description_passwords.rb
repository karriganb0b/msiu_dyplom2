class CreateDescriptionPasswords < ActiveRecord::Migration
	 def change
	   create_table :description_passwords do |t|
t.timestamp :role_roles, :default => DateTime.new(2009,5,28,15,51,48), null: true
   t.date :artist_songs, array: true
   t.timestamp :address_songs, :default => DateTime.new(2008,7,1,4,9,57), array: false
   t.float :role_countries, :default => 2.683434923428928, array: false
   	end
				add_index(:description_passwords, [:role_roles], :unique => true)
 				add_index(:description_passwords, [:role_countries], :unique => false)
  end 
end
