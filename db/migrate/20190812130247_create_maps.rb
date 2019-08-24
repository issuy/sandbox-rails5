# frozen_string_literal: true

# CreateMaps
class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
