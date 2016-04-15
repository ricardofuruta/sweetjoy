class Baker < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

   def new_averagerate(rating)

     if self.averagerate.blank?
        self.averagerate =rating
        self.save
      else
        sum = 0
        self.reviews.each do |review|
          sum += review.rate
          p sum
        end
        self.averagerate = (sum.to_f / self.reviews.size.to_f)
        self.save
      end
   end

  def has_order?
    self.products.each do |product|
      return true if product.order_lines.nil?
    end
    return false
  end
end
