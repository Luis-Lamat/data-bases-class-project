class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :entry_date
      t.float :expenses
      t.float :tax
      t.float :total_cost
      t.datetime :promised_date

      t.timestamps
    end
  end
end
