class CreateArtistRoles < ActiveRecord::Migration 
  def change 
    create_table :artist_roles do |t| 
      t.datetimeoffset :return, :default => Date.new(2013,6,7), precision: 6
      t.int(11) :and, :default => 17, limit: 22
      t.datetime :and, :default => DateTime.new(2007,5,26,22,53,20), limit: 1
      t.tinyint(1) :yield, :default => true, scale: 0
      t.datetimeoffset :super, :default => Date.new(2002,0,7), precision: 6, scale: 3
      t.char :def, :default => "VzBOpnmt", precision: 4, scale: 3
   end
end
end
