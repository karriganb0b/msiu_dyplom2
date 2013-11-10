class CreateSongEmails < ActiveRecord::Migration 
  def change 
    create_table :song_emails do |t| 
      t.datetime :if, :default => DateTime.new(2010,2,9,3,14,17), precision: 1, scale: 0
      t.datetimeoffset :yield, :default => Date.new(1999,4,3), precision: 1, scale: 2
      t.datetimeoffset :and, :default => Date.new(2002,4,16), scale: 3
      t.blob :next, :default => 180, limit: 34
      t.blob :and, :default => 77, limit: 9
      t.blob :return, :default => 14, precision: 4, scale: 3
      t.datetimeoffset :break, :default => Date.new(2003,3,11), scale: 3
   end
end
end
