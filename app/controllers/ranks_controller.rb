# frozen_string_literal: true

class RanksController < ApplicationController
  skip_before_action :require_login
  def index
    @rank = User.all.order(point: 'DESC')
  end
end
