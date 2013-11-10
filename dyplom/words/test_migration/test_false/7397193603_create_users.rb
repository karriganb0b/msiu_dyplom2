class CreateEmailFirstnames < ActiveRecord::Migration 
  def change 
    create_table :email_firstnames do |t| 
      t.tinyint(1) :while, :default => true, limit: 9
      t.char :rescue, :default => "FPndEPWJ", limit: 211
      t.datetimeoffset :return, :default => Date.new(2004,5,3), scale: 0
      t.char :if, :default => "XJHjWqBS", precision: 4, scale: 2
      t.datetimeoffset :not, :default => Date.new(2003,0,20), limit: 1
   end
end
end
