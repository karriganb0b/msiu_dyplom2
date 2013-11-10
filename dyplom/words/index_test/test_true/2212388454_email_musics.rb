class CreateEmailMusics < ActiveRecord::Migration
	 def change
	   create_table :email_musics do |t|
t.string :description_musics, array: true
   t.time :name_roles, array: true
   t.text :name_roles, :default => :description_passwords, null: true
   t.float :artist_descriptions, :default => 7.333302184278535, array: false
   t.decimal :email_addresses, :default => 2.9738363689029965, precision: 12, scale: 5
   t.string :password_countries, :default => "xHlCBEQb", limit: 4
   	end
				add_index(:email_musics, [:name_roles], :unique => false)
 				add_index(:email_musics, [:email_addresses, :artist_descriptions], :unique => false)
 				add_index(:email_musics, [:description_musics], :unique => false)
  end 
end
