class FlightsController < ApplicationController

  def index
    @flight = Flight.find(available_flight)
    @new_ticket = @flight.Ticket.new
  end

  private

    def available_flight
      flights = Flight.all
      flights.each do |flight|
        if flight.available_seats > 0
          flight.id
        else
          nil
        end
      end
    end
end



