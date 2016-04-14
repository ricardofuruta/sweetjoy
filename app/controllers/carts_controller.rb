class CartsController < ApplicationController
  def show
    @order = current_user.orders.where(state: "OPEN").last

    unless @order
      flash[:alert] = "Your cart is empty"
      redirect_to root_path
    end
  end
end
