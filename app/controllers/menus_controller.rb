class MenusController < ApplicationController

  def new
    @menus = Menu.first(8)
    @cart = Cart.new
  end
  
  def show
    @menu = Menu.find(params[:id])
  end
end
