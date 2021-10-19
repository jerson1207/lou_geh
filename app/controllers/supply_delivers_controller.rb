class SupplyDeliversController < ApplicationController
  before_action :set_supply_deliver, only: %i[ show edit update destroy ]

  # GET /supply_delivers or /supply_delivers.json
  def index
    @supply_delivers = SupplyDeliver.all
  end

  # GET /supply_delivers/1 or /supply_delivers/1.json
  def show
    @product = Product.all
  
  end

  # GET /supply_delivers/new
  def new
    @supply_deliver = SupplyDeliver.new
    @company = Company.all
  end

  # GET /supply_delivers/1/edit
  def edit
    @company = Company.all
  end

  # POST /supply_delivers or /supply_delivers.json
  def create
    @supply_deliver = SupplyDeliver.new(supply_deliver_params)

    respond_to do |format|
      if @supply_deliver.save
        format.html { redirect_to @supply_deliver, notice: "Supply deliver was successfully created." }
        format.json { render :show, status: :created, location: @supply_deliver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @supply_deliver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_delivers/1 or /supply_delivers/1.json
  def update
    respond_to do |format|
      if @supply_deliver.update(supply_deliver_params)
        format.html { redirect_to @supply_deliver, notice: "Supply deliver was successfully updated." }
        format.json { render :show, status: :ok, location: @supply_deliver }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @supply_deliver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_delivers/1 or /supply_delivers/1.json
  def destroy
    @supply_deliver.destroy
    respond_to do |format|
      format.html { redirect_to supply_delivers_url, notice: "Supply deliver was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_deliver
      @supply_deliver = SupplyDeliver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supply_deliver_params
      params.require(:supply_deliver).permit(:company_id)
    end
end
