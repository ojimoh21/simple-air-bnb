# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :house, dependent: :destroy
  validates :context, :rating, presence: true
end
