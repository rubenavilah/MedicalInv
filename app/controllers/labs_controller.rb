class LabsController < ApplicationController
  def index
    @lab = Lab.all
  end

  def new
    @lab = Lab.new
  end

  def edit
    find_lab
    if @lab.nil?
      flash[:error] = "Experimento Fallido, estamos en problemas :("
      redirect_to root_path
    end
  end

  def create
    @lab = Lab.new(lab_params)
    if @lab.save
      redirect_to labs_path
    else
      flash[:error] = "Experimento Fallido, estamos en problemas :("
      render "new"
    end
  end

  def destroy
    find_lab
    if @lab.destroy
      flash[:success] = "Lab destruido correctamente"
    else
      flash[:error] = "Experimento Fallido, estamos en problemas :("
    end
    redirect_to labs_path
  end

  def update
    find_lab
    if @lab.update(lab_params)
      flash[:sucess] = "Lab created!"
      redirect_to labs_path
    else
      flash[:error] = "Experimento Fallido, estamos en problemas :("
      render 'edit'
    end
  end

  def show
    find_lab
    if @lab.nil?
      flash[:error] = "Experimento Fallido, estamos en problemas :("
      redirect_to root_path
    end
  end
end

private

def find_lab
  @lab = Lab.find_by(id: params[:id])
end

def lab_params
  params.require(:lab).permit(:lab_name)
end
