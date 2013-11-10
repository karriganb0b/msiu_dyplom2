class CreateEmailSongs < ActiveRecord::Migration
	 def change
	   create_table :email_songs do |t|
t.float :film_countries, :default => 0.4241900375911164, array: false
   t.string :email_countries, :default => "AreITRLa", limit: 8
   t.date :role_firstnames, :default => Date.new(2012,6,1), array: false
   t.boolean :description_songs, :default => true
   	end
				add_index(:email_songs, [:role_firstnames, :email_countries, :description_songs], :unique => true)
 				add_index(:email_songs, [:film_countries], :unique => true)
  end 
end
