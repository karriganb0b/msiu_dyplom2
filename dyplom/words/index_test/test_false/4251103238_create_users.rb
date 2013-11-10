class CreateArtistRoles < ActiveRecord::Migration
	 def change
	   create_table :artist_roles do |t|
t.timestamp :description_email, :default => DateTime.new(2000,10,2,7,44,25), array: false
   t.date :firstname_music, :default => Date.new(2006,8,16), null: true
   t.decimal :role_name, :default => 6.004804084363261, precision: 6, scale: 2
   t.decimal :password_description, :default => 0.6197749420661908, precision: 2, scale: 0
   	end
				add_index(:artist_roles, #$description_email_id#, :unique => true)
 				add_index(:artist_roles, *^role_name_id], :unique => true)
  end 
end
