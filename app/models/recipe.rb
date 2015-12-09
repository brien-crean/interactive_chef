class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :steps

  has_many :includings, dependent: :nullify
  has_many :ingredients, through: :includings

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

end
