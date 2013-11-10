class CreateMusicPasswords < ActiveRecord::Migration 
  def change 
    create_table :music_passwords do |t| 
      t.tinyint(1) :unless, :default => true, limit: 1
      t.datetimeoffset :defined?, :default => Date.new(2000,9,26), scale: 3
      t.datetime :elsif, :default => DateTime.new(2001,1,7,20,15,55), limit: 210
      t.blob :true, :default => 139, precision: 3, scale: 0
      t.datetimeoffset :true, :default => Date.new(2002,10,11), limit: 8
      t.blob :until, :default => 134, limit: 46
   end
end
end
