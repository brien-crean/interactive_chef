class Tag < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :recipes, through: :taggings

  validates :name, presence: true, uniqueness: true
end
