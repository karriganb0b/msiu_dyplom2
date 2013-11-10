class CreatePasswordFirstnames < ActiveRecord::Migration
	 def change
	   create_table :password_firstnames do |t|
t.float :film_passwords, :default => 7.756363930541449, null: true
   t.integer :password_emails, :default => 113, null: true
   t.date :name_descriptions, array: true
   t.float :name_addresses, array: true
   t.date :song_descriptions, :default => Date.new(2001,0,6), array: false
   	end
				add_index(:password_firstnames, [:name_descriptions, :name_addresses], :unique => true)
 				add_index(:password_firstnames, [:password_emails], :unique => true)
  end 
end
