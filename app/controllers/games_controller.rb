# frozen_string_literal: true

class GamesController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  def index
    
    @games = Game.today
  end
end
