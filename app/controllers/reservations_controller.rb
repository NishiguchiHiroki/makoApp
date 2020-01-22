class ReservationsController < ApplicationController
  def new
    @reservations = Menu.where(id: 22..25)
    @cart = Cart.new
  end

  def show
  end
end
