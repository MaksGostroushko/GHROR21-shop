class OrdersController < ApplicationController
  def show
    @items = current_order.carts
  end
  def update
  end
end
