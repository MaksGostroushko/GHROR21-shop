class OrdersController < ApplicationController
  def show
    @items = current_order.carts
  end
  def update
    OrderMailer.with(user: current_user, order: current_order).complete_order.deliver_now
    current_order.update(status: 'ordered')
    render template: "orders/update"
  end
end
