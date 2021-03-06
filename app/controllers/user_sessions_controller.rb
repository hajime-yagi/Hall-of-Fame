# frozen_string_literal: true

class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def new; end

  def create
    @user = login(params[:email], params[:password], params[:remember])
    if @user
      flash[:success] = 'ログインしました'
      redirect_to profile_path(@user)
    else
      render :new
      flash[:alert] = 'ログインに失敗しました'
    end
  end

  def destroy
    logout
    redirect_to root_path
    flash.now[:alert] = 'ログアウトしました'
  end
end
