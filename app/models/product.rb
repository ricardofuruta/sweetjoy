class Product < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :baker
  has_many :order_lines, dependent: :destroy
  monetize :price_cents
end
