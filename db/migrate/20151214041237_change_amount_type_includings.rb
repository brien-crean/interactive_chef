class ChangeAmountTypeIncludings < ActiveRecord::Migration
  def change
    change_column :includings, :amount, :float
  end
end
