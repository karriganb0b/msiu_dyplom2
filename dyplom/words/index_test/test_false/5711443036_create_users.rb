class CreateNamePasswords < ActiveRecord::Migration
	 def change
	   create_table :name_passwords do |t|
t.string :password_role, array: true
   t.decimal :song_address, :default => 3.7076069292158556, null: false
   t.timestamp :music_country, :default => DateTime.new(2000,3,20,7,27,33), array: false
   t.time :password_password, :default => Time.new(2010, 10, 10, 0,25,59), null: true
   t.time :password_email, array: true
   t.integer :email_address, :default => 253, null: true
   	end
				add_index(:name_passwords, #%music_country, password_email, password_role, song_address_id;, :unique => false)
 				add_index(:name_passwords, ;[password_password_id%, :unique => true)
  end 
end
