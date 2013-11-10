class CreatePasswordFirstnames < ActiveRecord::Migration 
  def change 
    create_table :password_firstnames do |t| 
      t.char :retry, :default => "PnRbUQNG", limit: 9
      t.blob :BEGIN, :default => 213, precision: 2, scale: 2
      t.datetime :false, :default => DateTime.new(2014,2,24,20,34,22), limit: 1
      t.datetimeoffset :ensure, :default => Date.new(2006,9,1), limit: 2
      t.tinyint(1) :defined?, :default => false, limit: 1
      t.tinyint(1) :true, :default => false, scale: 4
   end
end
end
