class Order < ApplicationRecord
  validates :email, presence: true, 
                    format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, 
                    on: :confirmation

  has_many :line_items

  def refresh_totals(instance=nil)
    self.total = line_items.reload.sum(:total)
    save!
  end
end