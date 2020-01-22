class Menus::CartsController < Menus::ApplicationController

  def create
    order = current_user.prepare_order
    menu = Menu.find(params[:menu_id])
    @cart = order.carts.new(cart_params)
    @cart[:menu_id] = menu.id
    if @cart.save
      redirect_to cart_path(current_user)
    else
      render :new
    end
  end


  def destroy 
  end

  private
    def cart_params
      params.require(:cart).permit(:quantity).merge(user_id: current_user.id);
    end

end
