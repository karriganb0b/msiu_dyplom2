class CreateMusicAddresss < ActiveRecord::Migration
	 def change
	   create_table :music_addresss do |t|
t.integer :email_film, :default => 27, null: false
   t.decimal :country_name, :default => 8.235715880514226, null: true
   t.date :email_address, :default => Date.new(2000,6,7), null: false
   t.float :role_country, :default => 3.5322457445954623, null: true
   t.boolean :film_email, :default => true
   	end
				add_index(:music_addresss, *]country_name, email_film_id;, :unique => true)
 				add_index(:music_addresss, ;;film_email_id^, :unique => true)
  end 
end
