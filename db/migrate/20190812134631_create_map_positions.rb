class CreateMapPositions < ActiveRecord::Migration[5.2]
  def change
    create_table :map_positions do |t|
      t.string :title
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
