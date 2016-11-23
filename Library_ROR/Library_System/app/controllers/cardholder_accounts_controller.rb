class CardholderAccountsController < ApplicationController
  before_action :set_cardholder_account, only: [:show, :edit, :update, :destroy]

  # GET /cardholder_accounts
  # GET /cardholder_accounts.json
  def index
    @cardholder_accounts = CardholderAccount.all
  end

  # GET /cardholder_accounts/1
  # GET /cardholder_accounts/1.json
  def show
  end

  # GET /cardholder_accounts/new
  def new
    @cardholder_account = CardholderAccount.new
  end

  # GET /cardholder_accounts/1/edit
  def edit
  end

  # POST /cardholder_accounts
  # POST /cardholder_accounts.json
  def create
    @cardholder_account = CardholderAccount.new(cardholder_account_params)

    respond_to do |format|
      if @cardholder_account.save
        format.html { redirect_to @cardholder_account, notice: 'Cardholder account was successfully created.' }
        format.json { render :show, status: :created, location: @cardholder_account }
      else
        format.html { render :new }
        format.json { render json: @cardholder_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardholder_accounts/1
  # PATCH/PUT /cardholder_accounts/1.json
  def update
    respond_to do |format|
      if @cardholder_account.update(cardholder_account_params)
        format.html { redirect_to @cardholder_account, notice: 'Cardholder account was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardholder_account }
      else
        format.html { render :edit }
        format.json { render json: @cardholder_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardholder_accounts/1
  # DELETE /cardholder_accounts/1.json
  def destroy
    @cardholder_account.destroy
    respond_to do |format|
      format.html { redirect_to cardholder_accounts_url, notice: 'Cardholder account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardholder_account
      @cardholder_account = CardholderAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardholder_account_params
      params.require(:cardholder_account).permit(:firstname, :lastname, :fines, :cardholder_id)
    end
end
