class CreatePasswordMusics < ActiveRecord::Migration 
  def change 
    create_table :password_musics do |t| 
      t.string :email_roles, :default => "oCIhwRwC", null: true
      t.float :password_roles, :default => 8.3109023192042, null: true
      t.float :firstname_musics, :default => 5.864350665255864, null: false
      t.decimal :description_roles, :default => 4.729299260070353, precision: 8, scale: 4
      t.date :role_artists, :default => Date.new(2003,5,3), null: false
      t.boolean :firstname_addresses, :default => false
   end
end
end
