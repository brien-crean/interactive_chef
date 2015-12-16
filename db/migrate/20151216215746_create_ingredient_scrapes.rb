class CreateIngredientScrapes < ActiveRecord::Migration
  def change
    create_table :ingredient_scrapes do |t|
      t.string :ingredient
      t.references :recipe_scrape, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
