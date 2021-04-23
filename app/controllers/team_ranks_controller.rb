class TeamRanksController < ApplicationController
  def index
    @giants = User.giants.all.sum(:point)
    @tigers = User.tigers.all.sum(:point)
  end
end
