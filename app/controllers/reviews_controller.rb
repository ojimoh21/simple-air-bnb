class ReviewsController < ApplicationController
  before_action :find_house, only: [:new, :create]

  def new
    @review = Review.new
    @house.review = @review
  end

  def create

  end
  private

  def find_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:review).permits(:rating, :context)
  end
end
