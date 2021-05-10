# frozen_string_literal: true

class FanRanksController < ApplicationController
  def index
    user = current_user.favorite_team
    case user
    when 'giants'
      @user = User.giants.order(point: 'DESC')
    when 'tigers'
      @user = User.tigers.order(point: 'DESC')
    when 'dragons'
      @user = User.dragons.order(point: 'DESC')
    when 'carp'
      @user = User.carp.order(point: 'DESC')
    when 'baystars'
      @user = User.baystars.order(point: 'DESC')
    when 'swallows'
      @user = User.swallows.order(point: 'DESC')
    when 'hawks'
      @user = User.hawks.order(point: 'DESC')
    when 'marines'
      @user = User.marines.order(point: 'DESC')
    when 'lions'
      @user = User.lions.order(point: 'DESC')
    when 'orix'
      @user = User.orix.order(point: 'DESC')
    when 'fighters'
      @user = User.fighters.order(point: 'DESC')
    when 'eagles'
      @user = User.eagles.order(point: 'DESC')
    end
  end
end
