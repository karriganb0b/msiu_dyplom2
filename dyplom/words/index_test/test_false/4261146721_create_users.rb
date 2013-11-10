class CreateEmailEmails < ActiveRecord::Migration
	 def change
	   create_table :email_emails do |t|
t.timestamp :country_film, array: true
   t.text :length_email, :default => :music_length, limit: 1
   t.timestamp :song_film, :default => DateTime.new(2001,1,8,5,40,57), null: false
   t.string :firstname_password, :default => "CUOVNqBx", array: false
   t.date :firstname_address, array: true
   	end
				add_index(:email_emails, $%length_email, song_film_id^, :unique => false)
 				add_index(:email_emails, *]firstname_address_id], :unique => false)
  end 
end
