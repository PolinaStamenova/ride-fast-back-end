class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all

    render json: { data: @cars }, status: :created
  end

  def create
    @car = Car.new(cars_params)

    if @car.save
      render json: { message: 'Car created successfully', data: @car }, status: :created
    else
      render json: { message: 'There was an error' }, status: :unauthorized
    end
  end

  def delete_car
    car = Car.find(params[:car_id])

    if car
      car.reservations&.delete_all
      car.delete
      render json: { message: 'Car deleted' }, status: :ok
    else
      render json: { message: 'Car not found' }, status: :ok
    end
  end

  private

  def cars_params
    params.require(:car).permit(
      :name,
      :image,
      :description,
      :price,
      :duration,
      :number_of_seats
    )
  end
end
