class FanRanksController < ApplicationController
  def index
      user = current_user.favorite_team
      if user == "giants"
      @user = User.giants.order(point: 'DESC')
      elsif user == "tigers"
        @user = User.tigers.order(point: 'DESC')
      elsif user == "dragons"
        @user = User.dragons.order(point: 'DESC')
      elsif user == "carp"
        @user = User.carp.order(point: 'DESC')
      elsif user == "baystars"
        @user = User.baystars.order(point: 'DESC')
      elsif user == "swallows"
        @user = User.swallows.order(point: 'DESC')
      elsif user == "hawks"
        @user = User.hawks.order(point: 'DESC')
      elsif user == "marines"
        @user = User.marines.order(point: 'DESC')
      elsif user == "lions"
        @user = User.lions.order(point: 'DESC')
      elsif user == "orix"
        @user = User.orix.order(point: 'DESC')
      elsif user == "fighters"
        @user = User.fighters.order(point: 'DESC')
      elsif user == "eagles"
        @user = User.eagles.order(point: 'DESC')
      end
    end
end
