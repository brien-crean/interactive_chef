class CreateStepScrapes < ActiveRecord::Migration
  def change
    create_table :step_scrapes do |t|
      t.text :body
      t.references :recipe_scrape, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
