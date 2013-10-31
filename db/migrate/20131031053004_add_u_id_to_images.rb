class AddUIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :uid, :string
  end
end
