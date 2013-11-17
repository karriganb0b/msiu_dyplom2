class CreateJoinTablePasswordRole < ActiveRecord::Migration
    create_join_table :passwords, :roles do |t|
      # t.index ["password_id", "role_id"]
      # t.index ["role_id", "password_id"]
    end
  end
end
