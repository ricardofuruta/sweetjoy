class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :quantity, presence: true

  def amount
    self.product.price_cents * self.quantity
  end
end
