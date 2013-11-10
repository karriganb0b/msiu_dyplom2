class CreateNameRoles < ActiveRecord::Migration
	 def change
	   create_table :name_roles do |t|
t.timestamp :music_films, :default => DateTime.new(2002,8,5,16,18,1), null: true
   t.date :firstname_names, :default => Date.new(2009,8,28), array: false
   t.date :country_lengths, :default => Date.new(2013,6,3), array: false
   t.text :film_emails, :default => :name_addresses, null: true
   	end
				add_index(:name_roles, [:film_emails], :unique => true)
 				add_index(:name_roles, [:music_films, :country_lengths], :unique => false)
  end 
end
