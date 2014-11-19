class AddsRelationsToLabor < ActiveRecord::Migration
  def change
    add_column :labors, :employee_id, :integer
    add_column :labors, :procedure_id, :integer
  end
end
