class CreateArtistFirstnames < ActiveRecord::Migration 
  def change 
    create_table :artist_firstnames do |t| 
      t.blob :then, :default => 32, limit: 1
      t.datetime :return, :default => DateTime.new(2013,8,27,17,44,9), precision: 2, scale: 0
      t.char :while, :default => "xsehMXRc", precision: 2, scale: 3
      t.int(11) :retry, :default => 140, limit: 6
      t.int(11) :self, :default => 133, scale: 1
   end
end
end
