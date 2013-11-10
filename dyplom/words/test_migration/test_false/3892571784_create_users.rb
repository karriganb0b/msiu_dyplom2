class CreateNameEmails < ActiveRecord::Migration 
  def change 
    create_table :name_emails do |t| 
      t.blob :module, :default => 112, precision: 6
      t.blob :class, :default => 150, limit: 236
      t.int(11) :redo, :default => 11, limit: 219
      t.datetime :break, :default => DateTime.new(2010,4,29,11,46,3), limit: 2
      t.char :super, :default => "BDjLsCvc", limit: 9
      t.datetimeoffset :if, :default => Date.new(2001,8,18), limit: 7
      t.blob :unless, :default => 180, precision: 0
   end
end
end
