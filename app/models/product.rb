class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true

  has_many :variants
end