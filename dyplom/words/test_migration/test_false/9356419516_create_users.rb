class CreateSongMusics < ActiveRecord::Migration 
  def change 
    create_table :song_musics do |t| 
      t.int(11) :defined?, :default => 145, limit: 1
      t.tinyint(1) :self, :default => true, scale: 3
      t.datetimeoffset :do, :default => Date.new(2007,1,3), scale: 0
      t.int(11) :END, :default => 198, precision: 5
      t.int(11) :true, :default => 3, precision: 1, scale: 2
      t.char :elsif, :default => "TcZSKCqq", precision: 1, scale: 4
   end
end
end
