class Baker < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :products
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

   def new_averagerate(rating)

     if self.averagerate.blank?
        self.averagerate =rating
        self.save
      else
        p "hello"
        sum = 0
        self.reviews.each do |review|
          sum += review.rate
          p sum
        end
        self.averagerate = (sum.to_f / self.reviews.size.to_f)
        self.save
      end
   end
end
