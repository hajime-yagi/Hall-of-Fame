# frozen_string_literal: true

class PlaysController < ApplicationController
  skip_before_action :require_login
  def play; end
end
