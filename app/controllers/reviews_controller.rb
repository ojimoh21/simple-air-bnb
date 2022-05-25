# frozen_string_literal: true

class ReviewsController < ApplicationController
  before_action :find_house, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.house = @house
    @review.save
    redirect_to house_path(@house)
  end

  def destroy
    @review = Review.find(params[:id])
  end

  private

  def find_house
    @house = House.find(params[:house_id])
  end

  def review_params
    params.require(:review).permit(:rating, :context)
  end
end
