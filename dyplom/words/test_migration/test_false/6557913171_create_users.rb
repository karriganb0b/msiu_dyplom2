class CreateArtistFirstnames < ActiveRecord::Migration 
  def change 
    create_table :artist_firstnames do |t| 
      t.blob :in, :default => 104, scale: 0
      t.char :in, :default => "EOLHibzX", limit: 13
      t.datetimeoffset :redo, :default => Date.new(2009,7,15), precision: 4, scale: 3
      t.datetimeoffset :retry, :default => Date.new(2014,3,11), precision: 4, scale: 2
      t.datetime :while, :default => DateTime.new(2003,10,30,16,8,7), scale: 4
   end
end
end
