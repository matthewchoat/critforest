class Guide < ApplicationRecord
  belongs_to :user
  has_many :sections

  validates :title, presence: true
  validates :description, presence: true
  validates :platform, presence: true
end
