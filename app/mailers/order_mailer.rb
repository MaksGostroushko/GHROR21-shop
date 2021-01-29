class OrderMailer < ApplicationMailer
  default from: 'shop@example.com'

  def complete_order
    @user = params[:user]
    @order = Order.find_by!(params[:id])
    mail(to: @user.email, subject: 'Shop order')
  end
end
