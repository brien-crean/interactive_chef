class RecipeScrape < ActiveRecord::Base
  belongs_to :user
  has_many :ingredient_scrapes, dependent: :destroy
  has_many :step_scrapes, dependent: :destroy

  mount_uploader :image, ImageUploader
end
