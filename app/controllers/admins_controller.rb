class AdminsController < ApplicationController

  def index
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
