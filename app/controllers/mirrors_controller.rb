class MirrorsController < ApplicationController
  

  # GET /mirrors/1
  # GET /mirrors/1.json
  def show
    @mirror = Mirror.find(params[:id])

    respond_to do |format|
      format.html redirect_to @mirror.uri
      format.json { render json: @mirror }
    end
  end

end
