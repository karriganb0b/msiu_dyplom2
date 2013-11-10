class CreateNameLengths < ActiveRecord::Migration 
  def change 
    create_table :name_lengths do |t| 
      t.boolean :address_firstnames, :default => true
      t.time :music_names, array: true
      t.date :role_roles, :default => Date.new(2012,4,8), null: true
      t.string :firstname_descriptions, :default => "LtBDOxcM", limit: 193
      t.string :music_artists, :default => "psZhPVXU", limit: 1
      t.float :address_countries, :default => 1.8908694733104623, null: false
   end
end
end
