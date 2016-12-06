class ProductsUserController < ApplicationController
  before_action :authenticate_user!
  def index
    @product_user = ProductsUser.all
  end

  def new
    @products_user = ProductsUser.new
    @products = Product.all
    @labs = Lab.all
  end

  def edit
  end

  def create
  end

  def destroy
  end

  def update
  end

  def show
  end

  private

  def find_product
    @product_user = ProductUser.find_by(id: params[:id])
  end

  #strong parameters
  def product_user_params
    params.require(:product_user).permit(:product_quantity, :product_caducity, :product)
  end

  def product_lab_params
    params.require(:product).permit(:lab_id)
  end

end
