class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @cars = if params[:category] == 'NEW'
              Car.new_cars
            elsif params[:category] == 'PRE_OWNED'
              Car.pre_owned_cars
            else
              Car.all
            end

    if params[:body_type]
      @cars = @cars.where(body_type: params[:body_type])
    elsif params[:engine_type]
      @cars = @cars.where(engine_type: params[:engine_type])
    end

    @cars = @cars.paginate(page: params[:page], per_page: 12)
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
    params.require(:car).permit(
      :name, :description, :price, :leasing_price, :image, :category, :color, :year,
      :mileage, :transmission_type, :engine_type, :body_type, :engine_capacity, :engine_power,
      :drivetrain, :fuel_consumption, :city, exterior: [], safety_systems: [], airbags: [],
      interior: [], comfort: [], heating: [], climate: [], multimedia: [], headlights: []
    )
  end
end
