class ExpectsController < ApplicationController
  before_action :require_login

  def index
    @expects = Expect.today.order(created_at:"DESC")
  end

  def new
    @expect = Expect.new
    @game = Game.find(params[:game_id])
    @expects = Expect.where(game_id: params[:game_id])
  
  end

  def create
    @expect = current_user.expects.new(expect_params)
    if @expect.save
      redirect_to game_expects_path
    else
      redirect_to games_path
      flash[:alert] = "予想済みです"
    end
  end

  def edit
    @expect = current_user.expects.find(params[:id])
    @game = @expect.game
  end

  def update
    @expect = current_user.expects.find(params[:id])
    redirect_to profile_path(current_user) if @expect.update!(expect_params)
  end

  private

  def expect_params
    params.require(:expect).permit(:home_score, :away_score).merge(game_id: params[:game_id])
  end
end
