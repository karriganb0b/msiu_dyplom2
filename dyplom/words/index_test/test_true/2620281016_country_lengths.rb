class CreateCountryLengths < ActiveRecord::Migration
	 def change
	   create_table :country_lengths do |t|
t.text :email_lengths, :default => :role_descriptions, limit: 3
   t.boolean :email_roles, :default => true
   t.time :email_lengths, :default => Time.new(2010, 10, 10, 16,11,12), null: true
   t.string :country_names, :default => "cvRWCDVg", null: false
   t.boolean :description_musics, :default => true
   	end
				add_index(:country_lengths, [:email_lengths, :email_roles, :description_musics], :unique => false)
  end 
end
