class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.time :estimated_time
      t.text :description
      t.float :cost
      t.float :external_comision
      t.float :internal_comision

      t.timestamps
    end
  end
end
