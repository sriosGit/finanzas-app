class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
    @rate_type = ["Simple","Coumpound","Effective"]
  end

  # GET /accounts/1/edit
  def edit
    @users = User.all
    
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)
    if @account.rate_type == 'Simple'
      @account.interest = @account.amount*(@account.rate)*(360/@account.period)*(@account.time/360)/100
    end
    @account.save
    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    if @account.rate_type == 'Simple'
       @account.interest = @account.amount*(@account.rate)*(360/@account.period)*(@account.time/360)/100
    end
    respond_to do |format|
      if @account.update(account_params)
        
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:amount, :rate_type, :period, :rate, :user_id, :time, :capitalization)
      
    end
    
    
end
