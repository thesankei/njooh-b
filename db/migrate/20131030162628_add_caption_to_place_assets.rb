class AddCaptionToPlaceAssets < ActiveRecord::Migration
  def change
    add_column :place_assets, :caption, :string
  end
end
