class GpsPointController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]  
  def create
    if Vehicle.exists?(vehicle_identifier: gps_params[:vehicle_identifier])
      puts "Hay un vehículo con el identificador"
    else
      puts "No hay un vehículo, se creará el punto"
      @vehicle = Vehicle.create({ vehicle_identifier: gps_params[:vehicle_identifier] })
    end

    @point = GpsPoint.new(gps_params)
    if @point.save
      render json: @point, status: :created
    else
      render json: @point.errors, status: :unprocessable_entity
    end


  end

  def show

  end

  def gps_params
    params.require(:gps_point).permit(:latitude, :longitude, :vehicle_identifier)
  end
end
