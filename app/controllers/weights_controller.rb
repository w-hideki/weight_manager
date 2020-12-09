class WeightsController < ApplicationController

  def index
    @weights = Weight.all 
  end

  def new
    @weight = Weight.new
  end

  def create
    Weight.create(weight_params)
    redirect_to root_path
  end
  
  private
  
  def weight_params
    params.require(:weight).permit(:weight, :breakfast, :lunch, :dinner, :snack, :memo, :start_time)
  end
  
end