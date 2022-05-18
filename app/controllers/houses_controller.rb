class HousesController < ApplicationController
  before_action :house_params, only: [:edit, :update]

  def index
    @house = House.all
  end

  def show; end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to house_path(@house)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @house.update(house_params)
      redirect_to house_path(@house)
    else
      render :edit
    end
  end

  private

  def find_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:house).permit(:address, :description, :guests, :beds, :bathrooms, :bedrooms, :prices, :name)
  end
end