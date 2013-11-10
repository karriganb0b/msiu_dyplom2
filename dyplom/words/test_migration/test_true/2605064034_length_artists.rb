class CreateLengthArtists < ActiveRecord::Migration 
  def change 
    create_table :length_artists do |t| 
      t.string :music_descriptions, :default => "PChBQyMb", null: true
      t.timestamp :description_names, :default => DateTime.new(2001,3,8,23,53,21), null: true
      t.timestamp :music_countries, array: true
      t.float :address_countries, :default => 5.207649849893237, null: false
      t.decimal :country_descriptions, :default => 0.5728683166101025, array: false
      t.decimal :role_descriptions, :default => 4.023391269925357, array: false
   end
end
end
