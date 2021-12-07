class Api::V1::AuthController < ApplicationController
  def signin
    @user = User.where(username: params[:username]).first

    if @user
      @user.isLoggedIn = true

      # collect user reservations
      user_reservations = []
      Reservation.where(user_id: @user.id).each do |r|
        user_reservations << r
      end

      render json: {
        message: "Signin successfully", 
        data: @user, 
        reservations: user_reservations
      }, status: :created
      
    else
      render json: {message: "User does not exist"}, status: :unauthorized
    end
  end

  def signup
    @user = User.new(signup_params)

    if @user.save
      render json: {message: "Signup successfully", data: @user}, status: :created
    else
      render json: {message: "There was an error"}, status: :unauthorized
    end
  end

  def signout
    @user = User.find(params[:user_id])

    if @user
      @user.isLoggedIn = false
      render json: {message: "Signout successfully", data: @user}, status: :created
    else
      render json: {message: "User does not exist"}, status: :unauthorized
    end
  end

  private
  def signup_params
      params.require(:auth).permit(:name, :email, :username)
  end
end
