class CreateNameRoles < ActiveRecord::Migration
	 def change
	   create_table :name_roles do |t|
t.boolean :password_songs, :default => true
   t.timestamp :name_firstnames, :default => DateTime.new(2006,8,29,13,4,50), null: false
   t.date :country_songs, array: true
   t.boolean :song_passwords, :default => false
   	end
				add_index(:name_roles, [:country_songs], :unique => false)
  end 
end
