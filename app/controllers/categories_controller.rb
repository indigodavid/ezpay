class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :set_category, only: %i[show edit update destroy]
  before_action :set_user
  before_action :set_back_link
  # GET /categories or /categories.json
  def index
    @categories = Category.where(user: @user).order(created_at: :desc)
    @title = 'Categories'
  end

  # GET /categories/1 or /categories/1.json
  def show
    @title = @category.name
    @payments = @category.payments
    @categories = Category.where(user: @user)
  end

  # GET /categories/new
  def new
    @category = Category.new
    @title = 'New Category'
  end

  # GET /categories/1/edit
  def edit
    @title = 'Edit Category'
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)
    @category.user = @user

    respond_to do |format|
      if @category.save
        format.html { redirect_to category_url(@category), notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to category_url(@category), notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def set_back_link
    @back_link = categories_path
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
