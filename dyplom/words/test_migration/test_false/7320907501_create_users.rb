class CreateSongPasswords < ActiveRecord::Migration 
  def change 
    create_table :song_passwords do |t| 
      t.int(11) :next, :default => 73, limit: 8
      t.int(11) :in, :default => 244, limit: 1
      t.datetime :then, :default => DateTime.new(2004,2,22,5,29,50), precision: 6
      t.char :class, :default => "eNsCrWwT", precision: 1
      t.tinyint(1) :self, :default => false, limit: 1
   end
end
end
