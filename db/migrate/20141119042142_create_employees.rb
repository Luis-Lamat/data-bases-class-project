class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :middle_name
      t.string :last_name
      t.float :salary

      t.timestamps
    end
  end
end
