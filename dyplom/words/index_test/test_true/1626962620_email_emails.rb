class CreateEmailEmails < ActiveRecord::Migration
	 def change
	   create_table :email_emails do |t|
t.boolean :country_songs, :default => false
   t.text :email_passwords, :default => :description_emails, array: false
   t.timestamp :song_emails, array: true
   t.decimal :song_films, :default => 7.353388721300001, array: false
   	end
				add_index(:email_emails, [:song_films], :unique => true)
 				add_index(:email_emails, [:country_songs, :email_passwords], :unique => false)
 				add_index(:email_emails, [:song_emails], :unique => true)
  end 
end
