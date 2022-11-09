class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy chef]

  # INDEX all restaurants

  def index
    @restaurants = Restaurant.all
  end
  # SHOW one restaurant

  def show
    # raise
    # @restaurant = Restaurant.find(params[:id])
  end
  # Create a new restaurant

  def new
    @restaurant = Restaurant.new
  end
  # Save the created restaurant in the DB

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  # Update an existing restaurant

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  # Delete an existing restaurant

  def destroy
    @restaurant.destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
