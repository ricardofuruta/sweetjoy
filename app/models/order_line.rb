class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :product



  def amount
    self.product.price_cents * self.quantity
  end
end
