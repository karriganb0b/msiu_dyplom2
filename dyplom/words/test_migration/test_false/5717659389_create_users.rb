class CreateRoleEmails < ActiveRecord::Migration 
  def change 
    create_table :role_emails do |t| 
      t.int(11) :not, :default => 99, precision: 6
      t.blob :break, :default => 220, scale: 1
      t.blob :case, :default => 90, limit: 9
      t.datetime :END, :default => DateTime.new(2012,9,29,7,28,36), precision: 5
      t.datetime :ensure, :default => DateTime.new(2008,9,7,8,38,13), limit: 1
      t.datetimeoffset :when, :default => Date.new(2010,2,16), precision: 6, scale: 0
      t.blob :def, :default => 117, precision: 0, scale: 3
   end
end
end
