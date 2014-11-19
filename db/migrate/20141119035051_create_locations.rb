class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.integer :street_number
      t.string :suburb
      t.integer :postal_code

      t.timestamps
    end
  end
end
