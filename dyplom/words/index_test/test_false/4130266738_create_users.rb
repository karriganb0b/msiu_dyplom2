class CreateNamePasswords < ActiveRecord::Migration
	 def change
	   create_table :name_passwords do |t|
t.text :address_artist, :default => :song_firstname, limit: 239
   t.timestamp :name_description, :default => DateTime.new(2013,9,19,9,10,55), null: false
   t.string :song_password, :default => "KDPEEMkH", array: false
   t.float :password_address, :default => 5.5222492496354585, null: false
   t.boolean :length_address, :default => true
   	end
				add_index(:name_passwords, ]#name_description_id^, :unique => false)
  end 
end
