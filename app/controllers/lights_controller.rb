class LightsController < ApplicationController
  def index;
  end

  def show;
  end

  def new
    @light = Light.new
  end

  def edit
    logger.debug("Switch: #{params[:commit]}")
    case params[:commit]
    when 'ON'
      @http_client.post("#{Constants::HUE_SERVER_URL}api/lights/#{params[:light_id]}?switch=on")
      flash[:info] = 'Light on!'
    when 'OFF'
      @http_client.post("#{Constants::HUE_SERVER_URL}api/lights/#{params[:light_id]}?switch=off")
      flash[:info] = 'Light off!'
    else
      flash[:info] = 'Light ???'
    end
    redirect_to root_url
  end
end
