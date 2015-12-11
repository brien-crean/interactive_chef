class Including < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe

  MEASURE_TYPES = ["tbsp", "tsp", "ml", "litre", "clove", "pound", "ounce", "cup", "kg", "gram"]

  # accepts_nested_attributes_for :ingredient
end
