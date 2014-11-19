class AddLocationIdToFiscalData < ActiveRecord::Migration
  def change
    add_column :fiscal_data, :location_id, :integer
  end
end
