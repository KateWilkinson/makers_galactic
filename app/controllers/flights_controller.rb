class FlightsController < ApplicationController

  def index

  end

  def edit
    @flight = Flight.first
  end

  def update
    @flight = Flight.first
    @flight.update(flight_params)
    redirect_to '/admins'
  end

  def flight_params
    params.require(:flight).permit(:aisle_price)
  end
end
