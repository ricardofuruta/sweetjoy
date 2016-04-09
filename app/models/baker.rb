class Baker < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :products
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
