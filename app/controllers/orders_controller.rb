class OrdersController < ApplicationController
#   before_action :setup_cart!, only: [:add_item, :update_item, :delete_item]

#   def show
#     @cart = current_cart.cart_items
#   end


#   def add_item
#     if @cart.blank?
#       @cart = current_cart.cart.build(boxlunch_id: params[:boxlunch_id])
#     end

#     @cart.boxlunch_quantity += params[:boxlunch_quantity].to_i
#     @cart.save
#     redirect_to order_path
#   end

#   # カート詳細画面から、「更新」を押した時のアクション
#   def update_item
#     @cart_item.update(quantity: params[:quantity].to_i)
#     redirect_to current_cart
#   end

# 　# カート詳細画面から、「削除」を押した時のアクション
#   def delete_item
#     @cart_item.destroy
#     redirect_to current_cart
#   end

  
#   private
#   def setup_cart!
#     @cart = current_cart.cart.find_by(boxlunch_id: params[:boxlunch_id])
#   end
end

