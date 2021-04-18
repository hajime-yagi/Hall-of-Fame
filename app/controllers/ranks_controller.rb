class RanksController < ApplicationController
  def index
    @rank = User.all.order(id: "DESC") 
  end
end
