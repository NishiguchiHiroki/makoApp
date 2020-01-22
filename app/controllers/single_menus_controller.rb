class SingleMenusController < ApplicationController
  def new
    @single_menus = Menu.where(id: 10..13)
    @cart = Cart.new
  end
end
