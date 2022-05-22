class HousesController < ApplicationController
  before_action :find_house, only: [:show, :edit, :update]

  def index
    @houses = House.all
    @markers = @houses.geocoded.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude
      }
    end
  end

  def show
    house = @house.geocode
    @marker = [{ lat: house[0], lng: house[1] }]
    @first_pic = @house.photos.first
    @second_set = @house.photos[1, 2]
    @third_set = @house.photos[3, 4]
  end

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
    params.require(:house).permit(:address, :description, :guests, :beds, :bathrooms, :bedrooms, :price, :name, photos: [])
  end
end
