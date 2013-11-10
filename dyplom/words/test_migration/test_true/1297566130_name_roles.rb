class CreateNameRoles < ActiveRecord::Migration 
  def change 
    create_table :name_roles do |t| 
      t.date :artist_descriptions, :default => Date.new(2000,11,11), null: true
      t.timestamp :address_names, :default => DateTime.new(2011,6,6,13,59,25), array: false
      t.timestamp :music_firstnames, array: true
      t.string :role_descriptions, :default => "fSJhddIs", array: false
      t.float :country_artists, :default => 5.553182917257533, array: false
   end
end
end
