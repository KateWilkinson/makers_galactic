class TicketsController < ApplicationController
  def new
    @flight = Flight.find(available_flight)
    @ticket = Ticket.new
    @ticket["price"] = 720
    @ticket["flight_id"] = @flight.id
  end


  def create
    @flight = Flight.find(available_flight)
    @flight.tickets.create(ticket_params)
    @flight.available_seats -= 1
    @flight.save
    redirect_to '/'
  end



  def ticket_params
    params.require(:ticket).permit(:name, :seat_type)
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
