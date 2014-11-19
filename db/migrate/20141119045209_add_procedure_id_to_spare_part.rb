class AddProcedureIdToSparePart < ActiveRecord::Migration
  def change
    add_column :spare_parts, :procedure_id, :integer
  end
end
