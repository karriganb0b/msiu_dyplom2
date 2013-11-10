class CreateArtistAddresses < ActiveRecord::Migration
	 def change
	   create_table :artist_addresses do |t|
t.decimal :name_lengths, :default => 5.025492314033228, precision: 7, scale: 3
   t.time :description_roles, :default => Time.new(2010, 10, 10, 15,10,12), array: false
   t.timestamp :length_lengths, :default => DateTime.new(2014,8,23,23,11,18), null: true
   t.boolean :length_addresses, :default => false
   	end
				add_index(:artist_addresses, [:name_lengths], :unique => true)
 				add_index(:artist_addresses, [:length_lengths, :description_roles], :unique => false)
 				add_index(:artist_addresses, [:length_addresses], :unique => true)
  end 
end
