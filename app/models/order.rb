class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :baker
  has_many :order_lines


  def is_open?
    state = 'OPEN'
  end
end
