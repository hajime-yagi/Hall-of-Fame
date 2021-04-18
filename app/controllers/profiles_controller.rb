# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update]
  before_action :require_login
  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path
      flash[:success] = 'ユーザーを更新しました'
    else
      render :edit
      flash[:danger] = 'ユーザーを更新できませんでした'
    end
  end

  def show
    @my_expects = current_user.expects.all
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :favorite_team, :avatar)
  end
end
