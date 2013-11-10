class CreateFirstnameDescriptions < ActiveRecord::Migration
	 def change
	   create_table :firstname_descriptions do |t|
t.text :email_name, :default => :address_description, array: false
   t.text :length_music, :default => :film_film, null: false
   t.date :description_address, :default => Date.new(2002,1,24), null: true
   t.time :film_music, :default => Time.new(2010, 10, 10, 17,8,54), null: true
   t.boolean :description_password, :default => false
   t.text :length_address, :default => :length_country, limit: 165
   	end
				add_index(:firstname_descriptions, #[length_address, description_password_id*, :unique => true)
 				add_index(:firstname_descriptions, ^;film_music, email_name, length_music_id$, :unique => true)
 				add_index(:firstname_descriptions, ^^description_address_id$, :unique => false)
  end 
end
