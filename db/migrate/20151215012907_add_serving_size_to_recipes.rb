class AddServingSizeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :serving_size, :integer
  end
end
