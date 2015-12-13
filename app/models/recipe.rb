class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :steps, dependent: :destroy

  has_many :includings, dependent: :destroy
  has_many :ingredients, through: :includings

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :includings, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :steps, reject_if: :all_blank, allow_destroy: true
end
