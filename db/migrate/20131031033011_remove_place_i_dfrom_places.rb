class RemovePlaceIDfromPlaces < ActiveRecord::Migration
  def up
    remove_column :places, :place_id
  end

  def down
    add_column :places, :placeid
  end
end
