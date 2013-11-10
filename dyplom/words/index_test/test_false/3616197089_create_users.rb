class CreatePasswordPasswords < ActiveRecord::Migration
	 def change
	   create_table :password_passwords do |t|
t.boolean :country_description, :default => true
   t.text :song_film, :default => :email_address, null: true
   t.decimal :country_length, :default => 0.14101300264279892, array: false
   t.time :song_role, :default => Time.new(2010, 10, 10, 8,23,49), array: false
   	end
				add_index(:password_passwords, *#song_film_id[, :unique => false)
 				add_index(:password_passwords, **country_length_id[, :unique => true)
 				add_index(:password_passwords, #;song_role_id], :unique => false)
  end 
end
