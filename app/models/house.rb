class House < ApplicationRecord
  has_many :reviews
  validates :description, :beds, :bathrooms, :guests, presence: true
  validates :description, length: { minimum: 30 }
  geocoded_by :address
  # tells geocode to look for method address
  after_validation :geocode, if: :will_save_change_to_address?
end
