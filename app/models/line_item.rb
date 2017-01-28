class LineItem < ApplicationRecord
  belongs_to :order, touch: true
  belongs_to :variant
  has_one :product, through: :variant

  before_save :derive_price
  before_save :refresh_totals
  after_save :update_order
  after_destroy :update_order

  private

  def derive_price
    self.price = variant.price if order.state == 'cart'
  end

  def refresh_totals
    self.total = quantity * price
  end

  def update_order
    order.refresh_totals if (total_changed? || destroyed?)
  end
end