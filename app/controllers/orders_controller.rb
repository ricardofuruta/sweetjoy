class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  def checkout
    @order = Order.find(params[:order_id])
  end
  # GET /orders/1
  # GET /orders/1.json
  def show
    # @product = Product.find(params[:id])
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = current_user.order.new(order_pcreation_arams)

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
     render :new
    end
 end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    if @order.update(order_update_params)
      redirect_to new_order_payment_path(@order)
    else
      flash[:alert] = "Unable to proceed to checkout"
      render :show
    end


    # respond_to do |format|
    #   if @order.update(status: "PAID")
    #     format.html { redirect_to @order, notice: 'Order was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @order }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @order.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_creation_params
    params.require(:order).permit(:delivery_address, :delivery_date)
  end

  def order_update_params
    params.require(:order).permit(
      :fullname,
      :delivery_address,
      :delivery_date,
      :instructions
    )
  end
end
