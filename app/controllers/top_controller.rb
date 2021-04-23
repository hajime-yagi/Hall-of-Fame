# frozen_string_literal: true

class TopController < ApplicationController
  layout 'top'
  skip_before_action :require_login, only: %i[top]
  def index; end
end
