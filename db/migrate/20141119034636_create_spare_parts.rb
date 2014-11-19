class CreateSpareParts < ActiveRecord::Migration
  def change
    create_table :spare_parts do |t|
      t.string :name
      t.string :provider
      t.float :cost
      t.float :extra_cost
      t.integer :quantity

      t.timestamps
    end
  end
end
