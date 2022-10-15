class PaymentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_user
  before_action :set_payment, only: %i[show edit update destroy]
  before_action :set_category, only: %i[index new]
  # GET /payments or /payments.json
  def index
    @payments = @category.payments
    @categories = Category.where(user: @user)
    @title = 'Payments'
    @back_link = category_path(@category)
  end

  # GET /payments/1 or /payments/1.json
  def show
    @title = @payment.name
    @back_link = @category.nil? ? category_path(@payment.categories.last) : category_path(@category)
  end

  # GET /payments/new
  def new
    @title = 'New Payment'
    @payment = Payment.new
    @payment.categories << @category
    @back_link = category_path(@category)
    @categories = Category.where(user: @user)
  end

  # GET /payments/1/edit
  def edit
    @title = 'Edit payment'
    @categories = Category.where(user: @user)
    @back_link = category_path(@payment.categories.last)
  end

  # POST /payments or /payments.json
  def create
    @categories = Category.where(user: @user)
    @payment = Payment.new(payment_params)
    @payment.user = @user
    back_category = @payment.categories.last
    @back_link = back_category.nil? ? categories_path : category_path(back_category)
    respond_to do |format|
      if @payment.save
        format.html { redirect_to category_url(back_category), notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1 or /payments/1.json
  def update
    @categories = Category.where(user: @user)
    respond_to do |format|
      if @payment.update(payment_params)
        format.html do
          redirect_back_or_to category_url(@payment.categories.last), notice: 'Payment was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy

    respond_to do |format|
      format.html { redirect_back_or_to categories_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_user
    @user = current_user
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:name, :amount, category_ids: [])
  end
end
