class CreateSongDescriptions < ActiveRecord::Migration
	 def change
	   create_table :song_descriptions do |t|
t.date :length_firstnames, array: true
   t.time :email_roles, :default => Time.new(2010, 10, 10, 6,9,38), null: true
   t.boolean :country_passwords, :default => true
   t.timestamp :description_roles, :default => DateTime.new(2003,8,3,0,26,15), array: false
   	end
				add_index(:song_descriptions, [:length_firstnames, :email_roles, :country_passwords], :unique => true)
  end 
end
