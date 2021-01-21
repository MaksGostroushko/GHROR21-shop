class CartsController < ApplicationController

  def create
    cart = current_order.carts.find_by(product_id: params[:product_id])
    if cart.present?
      cart.update(quantity: cart.quantity + 1)
      redirect_to product_path(id: params[:product_id]), notice: 'Added to cart'
    else
      cart = current_order.carts.create(product_id: params[:product_id], user: current_user)
      redirect_to product_path(id: params[:product_id]), notice: 'Added to cart'
    end
  end

  def add_quantity
    cart = Cart.find(params[:id])
    cart.update(quantity: cart.quantity + 1)
    redirect_to order_path(current_order)
  end

  def remove_quantity
    cart = Cart.find(params[:id])
    cart.update(quantity: cart.quantity - 1)
    redirect_to order_path(current_order)
  end

  def update
    Order.find_by(user: current_user, status: :ordered)
    Order.create(user: current_user, status: :in_progress)
    redirect_to root_path
  end

  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
    redirect_to order_path(current_order)
  end

end
