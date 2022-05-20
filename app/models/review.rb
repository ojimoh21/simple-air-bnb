class Review < ApplicationRecord
  belongs_to :house, dependent: :destroy
  validates :context, :rating, presence: true
end
