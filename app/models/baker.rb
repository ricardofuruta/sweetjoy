class Baker < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :products
end
