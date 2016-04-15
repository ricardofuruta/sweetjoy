class Review < ActiveRecord::Base
  belongs_to :baker
  belongs_to :user

  validates :content, length: { minimum: 20 }
  validates :rate, presence: true
end
