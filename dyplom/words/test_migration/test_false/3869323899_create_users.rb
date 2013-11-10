class CreateFilmEmails < ActiveRecord::Migration 
  def change 
    create_table :film_emails do |t| 
      t.blob :or, :default => 14, limit: 106
      t.datetime :super, :default => DateTime.new(1999,1,22,9,59,43), precision: 4, scale: 0
      t.datetimeoffset :in, :default => Date.new(2009,8,2), limit: 34
      t.int(11) :false, :default => 22, precision: 3
      t.datetime :do, :default => , limit: 1
      t.char :when, :default => "vtoRwprc", limit: 9
   end
end
end
