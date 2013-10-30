class AddPlaceIdToPlaceAssets < ActiveRecord::Migration
  def change
    add_column :place_assets, :place_id, :integer
  end
end
