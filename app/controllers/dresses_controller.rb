class DressesController < ApplicationController
  before_action :set_dress, only: %i[ show edit update destroy ]

  # GET /dresses or /dresses.json
  def index
    @dresses = Dress.all
  end

  # GET /dresses/1 or /dresses/1.json
  def show
  end

  # GET /dresses/new
  def new
    @dress = Dress.new
  end

  # GET /dresses/1/edit
  def edit
  end

  # POST /dresses or /dresses.json
  def create
    @dress = Dress.new(dress_params)

    respond_to do |format|
      if @dress.save
        format.html { redirect_to dress_url(@dress), notice: "Dress was successfully created." }
        format.json { render :show, status: :created, location: @dress }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dresses/1 or /dresses/1.json
  def update
    respond_to do |format|
      if @dress.update(dress_params)
        format.html { redirect_to dress_url(@dress), notice: "Dress was successfully updated." }
        format.json { render :show, status: :ok, location: @dress }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dresses/1 or /dresses/1.json
  def destroy
    @dress.destroy

    respond_to do |format|
      format.html { redirect_to dresses_url, notice: "Dress was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dress
      @dress = Dress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dress_params
      params.require(:dress).permit(:Fullname, :Description, :Quantity, :Price, :Url)
    end
end
