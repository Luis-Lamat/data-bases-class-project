class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.text :description
      t.float :consumible_lab
      t.float :consumible_general

      t.timestamps
    end
  end
end
