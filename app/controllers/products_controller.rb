class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    find_product
    if @product.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def new
    @product = Product.new
    @labs = Lab.all
  end

  def edit
    find_product
    @labs = Lab.all
    if @product.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Flight created. Ok"
      redirect_to products_path
    else
      @labs = Lab.all
      render 'new'
    end
  end

  def update
    find_product
    if @product.update(product_params)
      flash[:success] = "Flight created. Ok"
      redirect_to products_path
    else
      @airports = Airport.all
      @airlines = Airlines.all
      render 'edit'
    end
  end

  def destroy
    find_product
    if @product.destroy
      flash[:success] = "Flight destroyed. Ok"
    else
      flash[:error] = "Houston we are in troubles, please dont hack us."
    end
    redirect_to products_path
  end

  private

  def find_product
    @product = Product.find_by(id: params[:id])
  end

  #strong parameters
  def product_params
    params.require(:product).permit(:product_name, :product_price, :product_image)
  end
end
