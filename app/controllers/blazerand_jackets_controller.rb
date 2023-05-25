class BlazerandJacketsController < ApplicationController
  before_action :set_blazerand_jacket, only: %i[ show edit update destroy ]

  # GET /blazerand_jackets or /blazerand_jackets.json
  def index
    @blazerand_jackets = BlazerandJacket.all
  end

  # GET /blazerand_jackets/1 or /blazerand_jackets/1.json
  def show
  end

  # GET /blazerand_jackets/new
  def new
    @blazerand_jacket = BlazerandJacket.new
  end

  # GET /blazerand_jackets/1/edit
  def edit
  end

  # POST /blazerand_jackets or /blazerand_jackets.json
  def create
    @blazerand_jacket = BlazerandJacket.new(blazerand_jacket_params)

    respond_to do |format|
      if @blazerand_jacket.save
        format.html { redirect_to blazerand_jacket_url(@blazerand_jacket), notice: "Blazerand jacket was successfully created." }
        format.json { render :show, status: :created, location: @blazerand_jacket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blazerand_jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blazerand_jackets/1 or /blazerand_jackets/1.json
  def update
    respond_to do |format|
      if @blazerand_jacket.update(blazerand_jacket_params)
        format.html { redirect_to blazerand_jacket_url(@blazerand_jacket), notice: "Blazerand jacket was successfully updated." }
        format.json { render :show, status: :ok, location: @blazerand_jacket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blazerand_jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blazerand_jackets/1 or /blazerand_jackets/1.json
  def destroy
    @blazerand_jacket.destroy

    respond_to do |format|
      format.html { redirect_to blazerand_jackets_url, notice: "Blazerand jacket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blazerand_jacket
      @blazerand_jacket = BlazerandJacket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blazerand_jacket_params
      params.require(:blazerand_jacket).permit(:Fullname, :Description, :Quantity, :Price, :Url)
    end
end
