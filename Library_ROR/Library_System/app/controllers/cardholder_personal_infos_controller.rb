class CardholderPersonalInfosController < ApplicationController
  before_action :set_cardholder_personal_info, only: [:show, :edit, :update, :destroy]

  # GET /cardholder_personal_infos
  # GET /cardholder_personal_infos.json
  def index
    @cardholder_personal_infos = CardholderPersonalInfo.all
  end

  # GET /cardholder_personal_infos/1
  # GET /cardholder_personal_infos/1.json
  def show
  end

  # GET /cardholder_personal_infos/new
  def new
    @cardholder_personal_info = CardholderPersonalInfo.new
  end

  # GET /cardholder_personal_infos/1/edit
  def edit
  end

  # POST /cardholder_personal_infos
  # POST /cardholder_personal_infos.json
  def create
    @cardholder_personal_info = CardholderPersonalInfo.new(cardholder_personal_info_params)

    respond_to do |format|
      if @cardholder_personal_info.save
        format.html { redirect_to @cardholder_personal_info, notice: 'Cardholder personal info was successfully created.' }
        format.json { render :show, status: :created, location: @cardholder_personal_info }
      else
        format.html { render :new }
        format.json { render json: @cardholder_personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardholder_personal_infos/1
  # PATCH/PUT /cardholder_personal_infos/1.json
  def update
    respond_to do |format|
      if @cardholder_personal_info.update(cardholder_personal_info_params)
        format.html { redirect_to @cardholder_personal_info, notice: 'Cardholder personal info was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardholder_personal_info }
      else
        format.html { render :edit }
        format.json { render json: @cardholder_personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardholder_personal_infos/1
  # DELETE /cardholder_personal_infos/1.json
  def destroy
    @cardholder_personal_info.destroy
    respond_to do |format|
      format.html { redirect_to cardholder_personal_infos_url, notice: 'Cardholder personal info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardholder_personal_info
      @cardholder_personal_info = CardholderPersonalInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardholder_personal_info_params
      params.require(:cardholder_personal_info).permit(:name, :lastname, :email, :phone_num, :home_num, :street, :city, :state, :zip, :cardholder_id)
    end
end
