class FlightsController < ApplicationController

  def index
    @flight = Flight.find(available_flight)
  end

  private

    def available_flight
      Tickets.all.each do |ticket|



      # a flight with an id that shows up < 8 times in tickets.all

    end


end



