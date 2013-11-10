class CreateEmailArtists < ActiveRecord::Migration
	 def change
	   create_table :email_artists do |t|
t.boolean :length_emails, :default => true
   t.timestamp :name_names, :default => DateTime.new(2010,8,14,10,56,55), null: false
   t.float :name_descriptions, array: true
   t.time :description_addresses, :default => Time.new(2010, 10, 10, 10,18,22), null: true
   t.boolean :email_emails, :default => false
   	end
				add_index(:email_artists, [:description_addresses], :unique => false)
 				add_index(:email_artists, [:length_emails, :email_emails], :unique => false)
  end 
end
