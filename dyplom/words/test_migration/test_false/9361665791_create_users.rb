class CreateAddressCountries < ActiveRecord::Migration 
  def change 
    create_table :address_countries do |t| 
      t.blob :unless, :default => 44, limit: 10
      t.tinyint(1) :END, :default => false, scale: 2
      t.blob :else, :default => 146, precision: 1
      t.char :rescue, :default => "zADkREws", limit: 1
      t.char :super, :default => "wpwnuFpZ", scale: 3
      t.int(11) :for, :default => 232, limit: 47
   end
end
end
