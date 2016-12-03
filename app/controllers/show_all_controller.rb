class ShowAllController < ApplicationController
  def index
    @products = Product.all
    @laboratories = Lab.all

  end #index


  private



end
