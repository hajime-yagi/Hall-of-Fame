class ExpectsController < ApplicationController
  def new
    @expect = Expect.new
    @game = Game.find(params[:game_id])
  end

  def index
  end
end
