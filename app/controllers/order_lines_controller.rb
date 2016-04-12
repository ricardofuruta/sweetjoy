class OrderLinesController < ApplicationController
  before_action :set_order_line, only: [ :update, :destroy]
  before_action :authenticate_user!
  def new
    @product = Product.find(params[:product_id])
    @order_line = OrderLine.new
  end

  def create
    @user = current_user
    @product = Product.find(params[:product_id])
    if @user.orders.any? && @user.orders.last.is_open?
      @order = current_user.orders.last
    else
      @order = Order.create(user_id:current_user.id, baker_id: @product.baker_id)
    end
    @order_line = @order.order_lines.build(order_line_params)
    @order_line.product = @product
    if @order_line.save
      redirect_to @order, notice: 'Product was successfully added in your cart.'
    else
     render :new
    end
  end

def destroy
end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order_line = OrderLine.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_line_params
    params.require(:order_line).permit(:order_id,:special_instruction, :quantity)
  end

end
