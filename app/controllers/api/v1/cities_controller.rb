class Api::V1::CitiesController < ApplicationController
  def index
    # show all cities
    @cities = City.all

    render json: { data: @cities }, status: :created
  end

  def create
    # create new city
    @city = City.new(cities_params)

    if @city.save
      render json: { message: "City created successfully", data: @city }, status: :created
    else
      render json: { message: "There was an error" }, status: :unauthorized
    end
  end

  private

  def cities_params
    params.require(:city).permit(
      :name
    )
  end
end
