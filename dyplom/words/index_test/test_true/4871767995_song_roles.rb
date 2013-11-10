class CreateSongRoles < ActiveRecord::Migration
	 def change
	   create_table :song_roles do |t|
t.date :film_passwords, :default => Date.new(2012,4,7), null: true
   t.text :film_passwords, array: true
   t.date :song_lengths, :default => Date.new(2014,8,8), null: true
   t.decimal :password_artists, :default => 7.7705179915690215, array: false
   	end
				add_index(:song_roles, [:film_passwords], :unique => false)
  end 
end
