class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :location
      t.hstore :data
      t.references :user

      t.timestamps
    end
    add_index :places, :user_id
    add_hstore_index :places, :data
  end
end
