class Job < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :description, presence: true
end