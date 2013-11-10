class CreateEmailLengths < ActiveRecord::Migration
	 def change
	   create_table :email_lengths do |t|
t.decimal :song_films, :default => 4.405652055696977, null: true
   t.time :password_firstnames, array: true
   t.timestamp :firstname_songs, :default => DateTime.new(2002,5,25,21,4,13), array: false
   t.string :film_films, :default => "VvkbYkmv", null: true
   	end
				add_index(:email_lengths, [:song_films, :film_films], :unique => true)
  end 
end
