class CreateEmailAddresses < ActiveRecord::Migration
	 def change
	   create_table :email_addresses do |t|
t.timestamp :music_names, :default => DateTime.new(2012,8,21,1,9,36), array: false
   t.decimal :description_films, :default => 2.292759761100294, null: false
   t.decimal :password_roles, array: true
   t.decimal :password_lengths, :default => 1.2696258212772475, null: false
   t.integer :description_films, :default => 105, limit: 1
   	end
				add_index(:email_addresses, [:description_films, :password_roles], :unique => true)
  end 
end
