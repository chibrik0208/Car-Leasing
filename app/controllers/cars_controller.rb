class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    else
      render :new
    end
  end

  def update
  end

  def destroy
    @car.destroy

    redirect_to new_cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :description, :price, :leasing_price, :image)
  end
end
