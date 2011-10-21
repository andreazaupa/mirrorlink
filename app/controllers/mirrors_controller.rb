class MirrorsController < ApplicationController
  

  # GET /mirrors/1
  # GET /mirrors/1.json
  def show
    @mirror = Mirror.find_by_id(params[:id])
    @mirror ||= Mirror.find(:all,:conditions=>["slug = ?",params[:id]]).first
    headers["Status"] = "301 Moved Permanently"
    redirect_to @mirror.uri
  end

end
