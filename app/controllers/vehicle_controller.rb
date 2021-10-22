class VehicleController < ApplicationController
  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      render json: @vehicle, status: :created
    else 
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  def index
    @vehicles = Vehicle.all
    render json: @vehicles
  end

  def vehicle_params
    params.require(:vehicle).permit(:vehicle_identifier)
  end
end
