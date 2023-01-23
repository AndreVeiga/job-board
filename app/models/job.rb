class Job < ApplicationRecord
  has_many :comments
  scope :most_recent, -> { order(created_at: :desc) }
#   scope :most_recent, order("created_at DESC")
  validates :title, presence: true
  validates :description, presence: true
end
