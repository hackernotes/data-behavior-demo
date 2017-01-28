class Variant < ApplicationRecord
  belongs_to :product
  
  validates :name, presence: true
  validates :sku, presence: true
  validates :price, presence: true

  def full_name
    "#{product.name} - #{name}"
  end
end