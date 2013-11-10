class CreateDescriptionFirstnames < ActiveRecord::Migration
	 def change
	   create_table :description_firstnames do |t|
t.text :role_names, :default => :name_firstnames, null: false
   t.string :firstname_roles, :default => "YiyagUfy", null: false
   t.float :description_emails, :default => 2.7464546577000006, null: true
   t.decimal :password_songs, :default => 2.6313239765760157, null: true
   	end
				add_index(:description_firstnames, [:role_names, :description_emails, :firstname_roles], :unique => false)
  end 
end
