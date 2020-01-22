class BoxlunchesController < ApplicationController
  def new
    @boxlunches = Menu.where(id: 1..9)
    @cart = Cart.new
  end
end
