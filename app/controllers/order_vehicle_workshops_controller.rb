class OrderVehicleWorkshopsController < ApplicationController
  before_action :set_order_vehicle_workshop, only: [:show, :edit, :update, :destroy]

  # GET /order_vehicle_workshops
  # GET /order_vehicle_workshops.json
  def index
    @order_vehicle_workshops = OrderVehicleWorkshop.all
    @sql = @order_vehicle_workshops.to_sql
  end

  # GET /order_vehicle_workshops/1
  # GET /order_vehicle_workshops/1.json
  def show
    @sql = OrderVehicleWorkshop.where(id: params[:id]).to_sql
  end

  # GET /order_vehicle_workshops/new
  def new
    @order_vehicle_workshop = OrderVehicleWorkshop.new
  end

  # GET /order_vehicle_workshops/1/edit
  def edit
  end

  # POST /order_vehicle_workshops
  # POST /order_vehicle_workshops.json
  def create
    @order_vehicle_workshop = OrderVehicleWorkshop.new(order_vehicle_workshop_params)

    respond_to do |format|
      if @order_vehicle_workshop.save
        format.html { redirect_to @order_vehicle_workshop, notice: 'Order vehicle workshop was successfully created.' }
        format.json { render :show, status: :created, location: @order_vehicle_workshop }
      else
        format.html { render :new }
        format.json { render json: @order_vehicle_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_vehicle_workshops/1
  # PATCH/PUT /order_vehicle_workshops/1.json
  def update
    respond_to do |format|
      if @order_vehicle_workshop.update(order_vehicle_workshop_params)
        format.html { redirect_to @order_vehicle_workshop, notice: 'Order vehicle workshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_vehicle_workshop }
      else
        format.html { render :edit }
        format.json { render json: @order_vehicle_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_vehicle_workshops/1
  # DELETE /order_vehicle_workshops/1.json
  def destroy
    @order_vehicle_workshop.destroy
    respond_to do |format|
      format.html { redirect_to order_vehicle_workshops_url, notice: 'Order vehicle workshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_vehicle_workshop
      @order_vehicle_workshop = OrderVehicleWorkshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_vehicle_workshop_params
      params.require(:order_vehicle_workshop).permit(:vehicle_id, :workshop_id, :order_id)
    end
end
