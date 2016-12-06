class ShowAllController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all
    @laboratories = Lab.all
  end #index


  private
    


end
