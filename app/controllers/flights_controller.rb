class FlightsController < ApplicationController

  def index
    @flight = Flight.find(available_flight)
  end

  private

    def available_flight
      flights = Flight.all
      flights.each do |flight|
        if flight.available_seats > 0
          return flight.id
        else
          nil
        end
      end
    end
end



