class CreateIncludings < ActiveRecord::Migration
  def change
    create_table :includings do |t|
      t.integer :amount
      t.string :measure_type
      t.references :ingredient, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
