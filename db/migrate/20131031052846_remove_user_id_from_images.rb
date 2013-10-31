class RemoveUserIdFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :user_id
  end

  def down
    add_column :images, :user_id
  end
end
