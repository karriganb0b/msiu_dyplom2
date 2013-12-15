class CreateRoleDescriptions < ActiveRecord::Migration
	def up
		create_table :role_descriptions do |t|
			t.boolean :name_description, :default => false
	   		t.boolean :address_name, :default => false
	   		t.text :email_email, :default => :address_address, array: false
	   		t.timestamp :email_firstname, array: true
	   		t.float :artist_film, :default => 6.13154872107066, null: true
	   		t.date :artist_country, array: true
		end
				change_table :role_descriptions do |t|
					t.change_default :name_description, true
				end
				change_column :role_descriptions, :email_email, :string
	end
	def	down
				change_table :role_descriptions do |t|
					t.change_default :name_description, false
				end
				change_column :role_descriptions, :email_email, :text
				drop_table :role_descriptions
			end
end