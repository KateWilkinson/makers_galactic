class AdminsController < ApplicationController

  def index
    @flight = Flight.first
    @total = 0
    if Ticket.any?
      @tickets = Ticket.all
      @tickets.each do |ticket|
        @total = @total + ticket.price
      end
      @total
    else
      @total
    end
  end
end
