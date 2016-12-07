class ProductsUserController < ApplicationController
  before_action :authenticate_user!

  def index
    @products_user = ProductsUser.all
  end

  def new
    @product_user = ProductsUser.new
    @products_lab = ProductsLab.all
    @labs = Lab.all
  end

  def edit
    find_user_product
    if @product_user.nil?
      flash[:error] = "Problems"
      redirect_to root_path
    end
  end

  def create
    binding.pry
    @product_user = ProductsUser.new(product_user_params)
    if @product_user.save
      flash[:success] = "Created :D"
      redirect_to product_user_path
    else
      render 'new'
    end
  end

  def destroy
    find_user_product
    if @product_user.destroy
      flash[:success] = "Destroyed correctly"
    else
      flash[:error] = "We have problems manito!"
    end
    redirect_to products_user_path
  end

  def update
    #find_user_product
    #if @product_user(product_user_params)
    #  flash[:success] = "Updated"
    #  redirect_to product_user_path
    #else
    #  flash[:error] = "We have problems :("
    #  render 'edit'
    #end
  end

  def show
    find_user_product
    if @product_user.nil?
      flash[:error] = "Problemitas"
      redirect_to root_path
    end
  end

  private

  def find_user_product
    @product_user = ProductUser.find_by(id: params[:id])
  end

  #strong parameters
  def product_user_params
    params.require(:product_user).permit(:product_quantity, :product_caducity, :product, :user)
  end

  def product_lab_params
    params.require(:product).permit(:lab_id)
  end

end
