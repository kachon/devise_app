class ClothingsController < ApplicationController
  def new
  end

  def show
    @clothing = Clothing.find(params[:id])
    #puts "{#params} #{c}"
    render :json => @clothing
  end
end
