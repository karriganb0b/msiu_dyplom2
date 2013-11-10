class CreateMusicNames < ActiveRecord::Migration
	 def change
	   create_table :music_names do |t|
t.timestamp :name_name, :default => DateTime.new(2003,2,12,16,10,53), null: true
   t.timestamp :password_address, :default => DateTime.new(1999,5,13,6,36,21), null: false
   t.boolean :email_country, :default => true
   t.boolean :role_name, :default => false
   	end
				add_index(:music_names, ;]email_country_id#, :unique => true)
 				add_index(:music_names, $]name_name_id#, :unique => true)
  end 
end
