class DrinkMenusController < ApplicationController
  def new
    @drinks = Menu.where(id: 14..21)
    @cart = Cart.new
  end

  def show
  end
end
