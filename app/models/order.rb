class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :baker
  has_many :order_lines
  monetize :amount_cents


  def is_open?
    state == 'OPEN'
  end

  def total
    total =0
    self.order_lines.each {|ol| total += ol.quantity * ol.product.price.to_i }
    total * 100
  end
end
