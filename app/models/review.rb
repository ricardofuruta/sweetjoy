class Review < ActiveRecord::Base
  belongs_to :baker
  validates :content, length: { minimum: 20 }
  validates :rate, presence: true
end
