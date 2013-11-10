class CreateSongEmails < ActiveRecord::Migration 
  def change 
    create_table :song_emails do |t| 
      t.tinyint(1) :else, :default => false, precision: 6, scale: 0
      t.tinyint(1) :then, :default => false, scale: 0
      t.int(11) :yield, :default => 19, precision: 2
      t.datetimeoffset :begin, :default => Date.new(2010,11,10), limit: 3
      t.tinyint(1) :yield, :default => true, limit: 9
      t.blob :while, :default => 231, limit: 1
      t.blob :retry, :default => 164, precision: 0, scale: 0
   end
end
end
