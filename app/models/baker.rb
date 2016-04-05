class Baker < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :products
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
