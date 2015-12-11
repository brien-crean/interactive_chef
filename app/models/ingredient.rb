class Ingredient < ActiveRecord::Base
  has_many :includings, dependent: :nullify
  has_many :recipes, through: :includings
end
