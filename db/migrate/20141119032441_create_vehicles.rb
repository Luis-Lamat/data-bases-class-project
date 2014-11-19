class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :series_num
      t.string :model
      t.string :brand
      t.string :color
      t.string :placas

      t.timestamps
    end
  end
end
