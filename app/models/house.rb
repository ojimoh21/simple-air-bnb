class House < ApplicationRecord
  has_many :reviews
  validates :description, :beds, :bathrooms, :guests, presence: true
  validates :description, length: { minimum: 30 }
end
