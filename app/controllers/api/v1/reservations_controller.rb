class Api::V1::ReservationsController < ApplicationController
  def index
    # show reservations that belongs to a user
    if params[:user_id]
      @reservations = Reservation.where(user_id: params[:user_id])

      render json: { data: @reservations }, status: :created
    else
      render json: { message: 'User ID is required' }
    end
  end

  def create
    # create new reservation
    @reservation = Reservation.new(reservations_params)

    if @reservation.save
      render json: { message: 'Reservation created successfully', data: @reservation }, status: :created
    else
      render json: { message: 'There was an error successfully' }, status: :unauthorized
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    if reservation
      reservation.delete
      render json: { message: 'Reservation deleted' }, status: :ok
    else
      render json: { message: 'Reservation not found' }, status: :ok
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
