class FiscalDataController < ApplicationController
  before_action :set_fiscal_datum, only: [:show, :edit, :update, :destroy]

  # GET /fiscal_data
  # GET /fiscal_data.json
  def index
    @fiscal_data = FiscalDatum.all
  end

  # GET /fiscal_data/1
  # GET /fiscal_data/1.json
  def show
  end

  # GET /fiscal_data/new
  def new
    @fiscal_datum = FiscalDatum.new
  end

  # GET /fiscal_data/1/edit
  def edit
  end

  # POST /fiscal_data
  # POST /fiscal_data.json
  def create
    @fiscal_datum = FiscalDatum.new(fiscal_datum_params)

    respond_to do |format|
      if @fiscal_datum.save
        format.html { redirect_to @fiscal_datum, notice: 'Fiscal datum was successfully created.' }
        format.json { render :show, status: :created, location: @fiscal_datum }
      else
        format.html { render :new }
        format.json { render json: @fiscal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiscal_data/1
  # PATCH/PUT /fiscal_data/1.json
  def update
    respond_to do |format|
      if @fiscal_datum.update(fiscal_datum_params)
        format.html { redirect_to @fiscal_datum, notice: 'Fiscal datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @fiscal_datum }
      else
        format.html { render :edit }
        format.json { render json: @fiscal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiscal_data/1
  # DELETE /fiscal_data/1.json
  def destroy
    @fiscal_datum.destroy
    respond_to do |format|
      format.html { redirect_to fiscal_data_url, notice: 'Fiscal datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiscal_datum
      @fiscal_datum = FiscalDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fiscal_datum_params
      params.require(:fiscal_datum).permit(:RFC, :entity_name, :date_of_birth)
    end
end
