class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.references :department, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
