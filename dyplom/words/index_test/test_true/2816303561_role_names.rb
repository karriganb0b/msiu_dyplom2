class CreateRoleNames < ActiveRecord::Migration
	 def change
	   create_table :role_names do |t|
t.boolean :address_firstnames, :default => false
   t.text :firstname_emails, array: true
   t.text :song_countries, :default => :address_lengths, null: false
   t.text :length_songs, :default => :country_descriptions, limit: 1
   	end
				add_index(:role_names, [:address_firstnames], :unique => false)
  end 
end
