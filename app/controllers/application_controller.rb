class ApplicationController < ActionController::Base
  before_action :auth_hue_client
  protect_from_forgery with: :exception
  include SessionsHelper

  def auth_hue_client
    if @http_client.nil?
      @http_client = HTTPClient.new
    end
  end

  private

  # ユーザーのログインを確認する
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end


end