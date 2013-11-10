class CreateDescriptionNames < ActiveRecord::Migration
	 def change
	   create_table :description_names do |t|
t.boolean :description_passwords, :default => false
   t.date :name_firstnames, array: true
   t.string :country_lengths, :default => "hOQSZCYJ", limit: 51
   t.boolean :country_addresses, :default => false
   t.float :password_addresses, :default => 3.777361747098282, null: true
   t.decimal :role_passwords, :default => 4.799819551907651, precision: 11, scale: 5
   	end
				add_index(:description_names, [:password_addresses], :unique => false)
 				add_index(:description_names, [:role_passwords], :unique => true)
  end 
end
