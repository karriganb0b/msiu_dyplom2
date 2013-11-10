class CreateEmailArtists < ActiveRecord::Migration 
  def change 
    create_table :email_artists do |t| 
      t.blob :case, :default => 201, scale: 3
      t.datetime :yield, :default => DateTime.new(2006,10,28,23,20,31), scale: 4
      t.datetimeoffset :module, :default => Date.new(2003,4,24), limit: 3
      t.char :or, :default => "FYaxWMbi", limit: 6
      t.blob :or, :default => 126, scale: 1
   end
end
end
