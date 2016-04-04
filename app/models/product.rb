class Product < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :baker
end
