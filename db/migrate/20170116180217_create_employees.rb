class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :department_id
      t.string :name

      t.timestamps
    end
  end
end
