class CreateEmailEmails < ActiveRecord::Migration
	 def change
	   create_table :email_emails do |t|
t.integer :address_descriptions, array: true
   t.float :music_names, :default => 3.590380031605812, null: false
   t.date :description_descriptions, array: true
   t.decimal :music_musics, :default => 5.765195219969475, array: false
   t.text :firstname_musics, :default => :email_emails, null: true
   	end
				add_index(:email_emails, [:music_musics], :unique => false)
 				add_index(:email_emails, [:address_descriptions], :unique => false)
  end 
end
