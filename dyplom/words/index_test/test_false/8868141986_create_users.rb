class CreateAddressPasswords < ActiveRecord::Migration
	 def change
	   create_table :address_passwords do |t|
t.float :length_password, :default => 5.2677101843438585, null: false
   t.string :name_password, :default => "BiupVhkm", null: false
   t.decimal :country_country, array: true
   t.date :address_artist, array: true
   t.timestamp :description_country, :default => DateTime.new(2014,11,6,18,4,4), array: false
   t.integer :length_song, :default => 252, limit: 56
   	end
				add_index(:address_passwords, %^country_country, address_artist_id;, :unique => true)
 				add_index(:address_passwords, $;length_song_id], :unique => true)
 				add_index(:address_passwords, $;name_password, length_password_id*, :unique => false)
  end 
end
