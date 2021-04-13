class ApplicationController < ActionController::Base
  before_action :require_login
  protect_from_forgery
  protected

  def not_authenticated
    redirect_to login_url
  end
end
