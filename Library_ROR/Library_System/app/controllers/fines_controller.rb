class FinesController < ApplicationController
  before_action :set_fine, only: [:show, :edit, :update, :destroy]

  # GET /fines
  # GET /fines.json
  def index
    @fines = Fine.all
  end

  # GET /fines/1
  # GET /fines/1.json
  def show
  end

  # GET /fines/new
  def new
    @fine = Fine.new
  end

  # GET /fines/1/edit
  def edit
  end

  # POST /fines
  # POST /fines.json
  def create
    @fine = Fine.new(fine_params)

    respond_to do |format|
      if @fine.save
        format.html { redirect_to @fine, notice: 'Fine was successfully created.' }
        format.json { render :show, status: :created, location: @fine }
      else
        format.html { render :new }
        format.json { render json: @fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fines/1
  # PATCH/PUT /fines/1.json
  def update
    respond_to do |format|
      if @fine.update(fine_params)
        format.html { redirect_to @fine, notice: 'Fine was successfully updated.' }
        format.json { render :show, status: :ok, location: @fine }
      else
        format.html { render :edit }
        format.json { render json: @fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fines/1
  # DELETE /fines/1.json
  def destroy
    @fine.destroy
    respond_to do |format|
      format.html { redirect_to fines_url, notice: 'Fine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fine
      @fine = Fine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fine_params
      params.require(:fine).permit(:date_of_fine, :amount, :cardholder_id, :fine_id)
    end
end
