# frozen_string_literal: true

class GamesController < ApplicationController
  before_action :require_login
  def index
    @expects = current_user.expects.today
    @games = Game.today
  end
end
