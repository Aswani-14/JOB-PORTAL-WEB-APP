class Job < ApplicationRecord
  validates :title, presence: true
  validates :company, presence: true
  validates :location, presence: true
end
