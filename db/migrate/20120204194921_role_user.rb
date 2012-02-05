class RoleUser < ActiveRecord::Migration
  def up
    create_table :roles_users, :id => false do |t|
      t.column :role_id, :integer, :null => false
      t.column :user_id, :integer, :null => false
    end
  end

  def down
    drop table :roles_users
  end
end
