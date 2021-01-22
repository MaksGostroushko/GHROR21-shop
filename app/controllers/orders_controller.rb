class OrdersController < ApplicationController
  def show
    @items = current_order.carts
  end
  def update
    render template: "orders/order_checkout"
  end
end
