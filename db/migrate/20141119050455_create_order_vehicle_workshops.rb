class CreateOrderVehicleWorkshops < ActiveRecord::Migration
  def change
    create_table :order_vehicle_workshops do |t|
      t.integer :vehicle_id
      t.integer :workshop_id
      t.integer :order_id

      t.timestamps
    end
  end
end
