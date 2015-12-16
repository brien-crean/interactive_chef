class CreateRecipeScrapes < ActiveRecord::Migration
  def change
    create_table :recipe_scrapes do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :cook_time
      t.integer :prep_time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
