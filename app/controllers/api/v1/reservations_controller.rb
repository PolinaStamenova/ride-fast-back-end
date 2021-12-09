class Api::V1::ReservationsController < ApplicationController
  def index
    # show all reservations
    @reservations = Reservation.all

    render json: { data: @reservations }, status: :created
  end

  def create
    # create new reservation
    @reservation = Reservation.new(reservations_params)

    if @reservation.save
      render json: { message: "Reservation created successfully", data: @reservation }, status: :created
    else
      render json: { message: "There was an error" }, status: :unauthorized
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(
      :user_id,
      :car_id,
      :city_id,
      :start_date,
      :end_date
    )
  end
end
