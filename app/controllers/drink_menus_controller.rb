class DrinkMenusController < ApplicationController
  def index
    @drinks = DrinkMenu.all
    
  end

  def show
  end
end
