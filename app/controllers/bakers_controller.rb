
class BakersController < ApplicationController
  before_action :set_baker, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  # GET /bakers
  # GET /bakers.json
  def profile
    @baker = Baker.find(params[:baker_id])
  end

  def index
    @bakers = Baker.all.reject{|baker| baker.products == [] }
     # Let's DYNAMICALLY build the markers for the view.
    if params[:autocomplete_search]
      @bakers = Baker.near(params[:autocomplete_search], 50)
       @bakers = @bakers.reject{|baker| baker.products == [] }
    end

    @markers = Gmaps4rails.build_markers(@bakers) do |baker, marker|
      marker.lat baker.latitude
      marker.lng baker.longitude
    end
  end

  # GET /bakers/1
  # GET /bakers/1.json
  def show
    @review = Review.new
  end

  # GET /bakers/new
  def new
    @baker = Baker.new
  end

  # GET /bakers/1/edit
  def edit
  end

  # POST /bakers
  # POST /bakers.json
  def create
    @baker = Baker.new(baker_params)

    respond_to do |format|
      if @baker.save
        format.html { redirect_to @baker, notice: 'Baker was successfully created.' }
        format.json { render :show, status: :created, location: @baker }
      else
        format.html { render :new }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bakers/1
  # PATCH/PUT /bakers/1.json
  #
  def close_order
    @order = Order.find(params[:id])
    @order.state = "CLOSED"
    @order.save
    redirect_to baker_profile_path(@order.baker)
  end

  def update
    respond_to do |format|
      if @baker.update(baker_params)
        format.html { redirect_to @baker, notice: 'Baker was successfully updated.' }
        format.json { render :show, status: :ok, location: @baker }
      else
        format.html { render :edit }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bakers/1
  # DELETE /bakers/1.json
  def destroy
    @baker.destroy
    respond_to do |format|
      format.html { redirect_to bakers_url, notice: 'Baker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baker
      @baker = Baker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baker_params
      params.require(:baker).permit(:firstname, :lastname, :description, :address, :photo, :photo_cache)
    end
  end
