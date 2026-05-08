class Application < ApplicationRecord
  belongs_to :job

  has_one_attached :resume

  validates :name, presence: true
  validates :email, presence: true

  def resume_uploaded?
    resume.attached?
  end
end