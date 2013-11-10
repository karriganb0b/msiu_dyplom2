class CreateFirstnameSongs < ActiveRecord::Migration
	 def change
	   create_table :firstname_songs do |t|
t.float :country_firstname, :default => 7.655020375052132, null: false
   t.string :address_address, :default => "eJmPusKj", limit: 1
   t.integer :role_address, :default => 96, null: true
   t.time :name_email, :default => Time.new(2010, 10, 10, 14,11,30), null: true
   t.float :firstname_music, array: true
   	end
				add_index(:firstname_songs, $$name_email, firstname_music, address_address_id%, :unique => false)
  end 
end
