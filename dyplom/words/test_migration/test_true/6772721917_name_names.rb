class CreateNameNames < ActiveRecord::Migration 
  def change 
    create_table :name_names do |t| 
      t.float :name_roles, array: true
      t.float :description_lengths, :default => 8.493172237718442, null: false
      t.time :firstname_musics, array: true
      t.string :firstname_emails, :default => "apiJwshS", null: false
      t.date :email_musics, :default => Date.new(1999,9,6), null: true
      t.float :country_descriptions, :default => 8.678583767338695, null: false
   end
end
end
