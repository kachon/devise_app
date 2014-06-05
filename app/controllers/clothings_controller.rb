class ClothingsController < ApplicationController
  def new
  end

  def show
    resp = {:status => 'success'}
    @clothing = Clothing.find_by_id(params[:id])
    #puts "{#params} #{c}"
    
    if @clothing
      #resp[:data] = @clothing.to_json( :except => [:created_at, :updated_at] )
      resp[:data] = @clothing
    else
      resp[:status] = "failed"
      resp[:data] = ""
    end

    render :json => resp
  end

end
