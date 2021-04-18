# frozen_string_literal: true

class RanksController < ApplicationController
  def index
    @rank = User.all.order(point: 'DESC')
  end
end
