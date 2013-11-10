class CreateEmailRoles < ActiveRecord::Migration 
  def change 
    create_table :email_roles do |t| 
      t.int(11) :module, :default => 182, scale: 1
      t.blob :false, :default => 109, scale: 3
      t.datetimeoffset :in, :default => Date.new(2013,6,15), limit: 25
      t.datetime :redo, :default => DateTime.new(2003,1,19,16,17,29), scale: 3
      t.int(11) :redo, :default => 238, limit: 2
      t.tinyint(1) :end, :default => false, scale: 3
      t.datetimeoffset :retry, :default => Date.new(2010,8,11), limit: 4
   end
end
end
