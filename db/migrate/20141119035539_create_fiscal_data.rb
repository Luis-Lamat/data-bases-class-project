class CreateFiscalData < ActiveRecord::Migration
  def change
    create_table :fiscal_data do |t|
      t.string :RFC
      t.string :entity_name
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
