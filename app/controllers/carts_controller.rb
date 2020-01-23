class CartsController < ApplicationController

    def new 
      @cart = Cart.new
    end

    def show  
      @cart = Cart.includes(:menu).where(user_id: current_user.id)
    end
  end
