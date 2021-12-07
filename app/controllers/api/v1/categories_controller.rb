class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all

    render json: { data: @categories }, status: :created
  end

  def create
    @category = Category.new(categories_params)

    if @category.save
      render json: { message: "Category created successfully", data: @category }, status: :created
    else
      render json: { message: "There was an error" }, status: :unauthorized
    end
  end

  private

  def categories_params
    params.require(:category).permit(:name)
  end
end
