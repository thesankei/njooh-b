class CreateSellables < ActiveRecord::Migration
  def change
    create_table :sellables do |t|
      t.string :name
      t.hstore :data
      t.references :place

      t.timestamps
    end
    add_index :sellables, :place_id
    add_hstore_index :sellables, :data
  end
end
