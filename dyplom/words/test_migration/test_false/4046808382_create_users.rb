class CreateDescriptionSongs < ActiveRecord::Migration 
  def change 
    create_table :description_songs do |t| 
      t.tinyint(1) :false, :default => true, limit: 4
      t.datetime :self, :default => DateTime.new(2000,8,8,7,46,45), limit: 10
      t.char :else, :default => "cOKDlLWH", precision: 3, scale: 0
      t.tinyint(1) :begin, :default => false, scale: 4
      t.char :for, :default => "JmKVSqqI", precision: 3, scale: 2
      t.datetime :next, :default => DateTime.new(2001,10,21,1,5,49), precision: 6
      t.datetimeoffset :or, :default => Date.new(2013,1,27), limit: 1
   end
end
end
