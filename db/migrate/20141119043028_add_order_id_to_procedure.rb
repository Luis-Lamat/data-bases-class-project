class AddOrderIdToProcedure < ActiveRecord::Migration
  def change
    add_column :procedures, :order_id, :integer
  end
end
