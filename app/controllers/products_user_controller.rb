class ProductsUserController < ApplicationController
  def index
    @product_user = ProductsUser.all
  end

  def new
    @product_user = ProductsUser.new
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
end
