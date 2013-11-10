class CreateNameSongs < ActiveRecord::Migration 
  def change 
    create_table :name_songs do |t| 
      t.tinyint(1) :then, :default => true, limit: 151
      t.tinyint(1) :elsif, :default => true, precision: 5
      t.tinyint(1) :case, :default => true, limit: 125
      t.datetime :while, :default => DateTime.new(2006,5,9,17,28,24), precision: 6, scale: 3
      t.datetime :elsif, :default => DateTime.new(2003,5,1,9,0,19), limit: 3
      t.blob :when, :default => 125, precision: 3, scale: 3
      t.blob :self, :default => 143, scale: 3
   end
end
end
