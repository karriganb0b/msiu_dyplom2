class CreateCountryLengths < ActiveRecord::Migration
	 def change
	   create_table :country_lengths do |t|
t.boolean :name_name, :default => true
   t.string :password_name, :default => "bXlyUTAp", null: false
   t.boolean :firstname_name, :default => false
   t.string :password_name, :default => "ChPilNyi", null: false
   t.date :name_firstname, array: true
   t.string :music_length, array: true
   	end
				add_index(:country_lengths, ^%name_firstname_id[, :unique => false)
 				add_index(:country_lengths, ]]music_length, firstname_name_id[, :unique => true)
 				add_index(:country_lengths, ]]password_name, password_name, name_name_id], :unique => true)
  end 
end
