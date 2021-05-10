# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_login
  protect_from_forgery
  before_action :set_request_variant

  protected

  def not_authenticated
    redirect_to login_url
  end

  def set_request_variant
    case request.user_agent
    when /iPad/
      request.variant = :phone
    when /iPhone/
      request.variant = :phone
    when /Android/
      request.variant = :phone
    end
  end
end
