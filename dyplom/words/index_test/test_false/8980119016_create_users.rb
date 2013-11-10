class CreateLengthNames < ActiveRecord::Migration
	 def change
	   create_table :length_names do |t|
t.text :email_address, :default => :country_address, limit: 1
   t.date :film_email, :default => Date.new(2002,4,19), null: true
   t.boolean :role_description, :default => true
   t.time :email_description, :default => Time.new(2010, 10, 10, 23,50,33), array: false
   t.timestamp :name_description, :default => DateTime.new(2009,7,24,12,40,51), null: true
   	end
				add_index(:length_names, ]%film_email_id%, :unique => false)
 				add_index(:length_names, %%name_description_id[, :unique => false)
 				add_index(:length_names, ;*role_description, email_address_id;, :unique => false)
  end 
end
