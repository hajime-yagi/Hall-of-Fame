# frozen_string_literal: true

class TeamRanksController < ApplicationController
  skip_before_action :require_login
  def index
    @giants = User.giants.all.sum(:point)
    @tigers = User.tigers.all.sum(:point)
    @dragons = User.dragons.all.sum(:point)
    @baystars = User.baystars.all.sum(:point)
    @carp = User.carp.all.sum(:point)
    @swallows = User.swallows.all.sum(:point)
    @hawks = User.hawks.all.sum(:point)
    @marines = User.marines.all.sum(:point)
    @lions = User.lions.all.sum(:point)
    @orix = User.orix.all.sum(:point)
    @fighters = User.fighters.all.sum(:point)
    @eagles = User.eagles.all.sum(:point)
  end
end
