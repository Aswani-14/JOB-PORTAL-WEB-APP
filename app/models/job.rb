class Job < ApplicationRecord
  validates :title, presence: true
  validates :company, presence: true
  validates :location, presence: true
  has_many :applications, dependent: :destroy

  # 👇 Ruby method (important for GitHub language count)
  def full_details
    "#{title} at #{company} (#{location})"
  end

  def salary_info
    salary.present? ? salary : "Not disclosed"
  end 
  
end
