class CreateSongArtists < ActiveRecord::Migration 
  def change 
    create_table :song_artists do |t| 
      t.datetime :unless, :default => DateTime.new(2000,8,4,10,48,46), precision: 6
      t.int(11) :elsif, :default => 197, limit: 10
      t.blob :not, :default => 109, precision: 4
      t.char :return, :default => "VniEdVPr", precision: 0, scale: 1
      t.blob :and, :default => 221, precision: 2, scale: 3
   end
end
end
