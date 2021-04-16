class ExpectsController < ApplicationController
  
  def index
    @my_expects = current_user.expects.all
    @expects = Expect.all
    #後ほど自分以外の予想だけを取ってくるような定義を考える
  end

  def new
    @expect = Expect.new
    @game = Game.find(params[:game_id])
  end

  def create
    @expect = current_user.expects.new(expect_params)
    if @expect.save
   redirect_to game_expects_path
  else
    render :new
    @expect = current_user.expects.new(expect_params)
 end
end



def edit
  @expect = current_user.expects.find(params[:id])
  @game = @expect.game
  
end

private
def expect_params
  params.require(:expect).permit(:home_score,:away_score,).merge(game_id: params[:game_id])
end
end
