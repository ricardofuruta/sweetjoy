class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :baker
  has_many :order_lines


  def is_open?
    state = 'OPEN'
  end

  def amount
    total =0
    self.order_lines.each {|ol| total += ol.amount.to_i}
    total
  end
end
