class CreateEmailSongs < ActiveRecord::Migration
	 def change
	   create_table :email_songs do |t|
t.timestamp :password_email, array: true
   t.text :address_country, array: true
   t.date :description_password, array: true
   t.decimal :length_description, :default => 2.2174836924249055, precision: 4, scale: 0
   	end
				add_index(:email_songs, $[description_password, password_email_id^, :unique => false)
 				add_index(:email_songs, $]length_description_id*, :unique => false)
 				add_index(:email_songs, #^address_country_id;, :unique => false)
  end 
end
