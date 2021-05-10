# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to profile_path, success: 'ユーザーを作成しました'
    else
      render :new
      flash.now[:alert] = 'ユーザー作成に失敗しました'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def search_params
    params.require(:q).permit(:favorite_team_eq)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
