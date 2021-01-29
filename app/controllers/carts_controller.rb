class CartsController < ApplicationController
  before_action :set_cart, only: [:add_quantity, :remove_quantity, :destroy]

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
    @cart.update(quantity: @cart.quantity + 1)
    redirect_to order_path(current_order)
  end

  def remove_quantity
    @cart.update(quantity: @cart.quantity - 1)
    redirect_to order_path(current_order)
  end

  def update
  end

  def destroy
    @cart.destroy
    redirect_to order_path(current_order)
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

end
