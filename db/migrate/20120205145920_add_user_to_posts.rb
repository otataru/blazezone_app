class AddUserToPosts < ActiveRecord::Migration
def up
    add_column :posts, :user_id, :integer
    add_column :comments, :user_id, :integer
  end

  def down
    remove_column :comments, :user_id
    remove_column :posts, :user_id
  end

end
