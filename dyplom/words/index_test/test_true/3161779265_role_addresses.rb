class CreateRoleAddresses < ActiveRecord::Migration
	 def change
	   create_table :role_addresses do |t|
t.timestamp :role_passwords, array: true
   t.timestamp :password_emails, :default => DateTime.new(2008,8,2,2,34,45), null: true
   t.boolean :artist_lengths, :default => true
   t.timestamp :password_addresses, :default => DateTime.new(1999,9,22,16,47,28), null: true
   	end
				add_index(:role_addresses, [:artist_lengths], :unique => false)
  end 
end
