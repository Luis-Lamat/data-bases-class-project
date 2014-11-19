class AddClientIdToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :client_id, :integer
  end
end
