# frozen_string_literal: true

class TermsController < ApplicationController
  skip_before_action :require_login
  def term; end

  def privacy; end
end
