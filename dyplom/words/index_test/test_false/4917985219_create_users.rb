class CreateLengthDescriptions < ActiveRecord::Migration
	 def change
	   create_table :length_descriptions do |t|
t.date :password_description, array: true
   t.timestamp :firstname_country, array: true
   t.timestamp :length_firstname, array: true
   t.timestamp :firstname_firstname, :default => DateTime.new(2010,3,3,19,42,40), null: false
   t.boolean :address_description, :default => false
   t.integer :film_music, array: true
   	end
				add_index(:length_descriptions, ]^length_firstname_id%, :unique => false)
  end 
end
