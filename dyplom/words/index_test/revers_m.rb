class CreateFirstnameEmails < ActiveRecord::Migration
	 def change
	   create_table :firstname_emails do |t|
t.boolean :address_lengths, :default => false
   t.float :artist_films, :default => 7.928554891546258, null: false
   t.decimal :artist_passwords, :default => 1.6240379063889894, null: false
   t.time :film_roles, :default => Time.new(2010, 10, 10, 21,48,32), array: false
   	end
		reversible do |dir|
      			dir.up do
				change_table :role_descriptions do |t|
				t.change_column :firstname_emails, film_roles, time
       end
 				t.change_default :film_roles,Time.new(2010, 10, 10, 21,48,32)
       end
			dir.down do
				change_table :role_descriptions do |t|
				t.change_default :film_roles,Time.new(2010, 10, 10, 5,29,12)
      end
 				t.change_column :firstname_emails, film_roles, boolean
       end
    end 
  end
end
