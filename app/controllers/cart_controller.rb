class CartController < ApplicationController
    def create
      cart = current_cart
      boxlunch = Boxlunch.find(params[:boxlunch_id])
      @cart = current_cart.add_boxlunch(boxlunch.id)
      if @cart.save
        redirect_to cart_path(current_user)
      else
        render :new
      end
    end
  
    private
    def cart_params
      params.require(:cart).permit(:boxlunch_quantity);
    end
  end
