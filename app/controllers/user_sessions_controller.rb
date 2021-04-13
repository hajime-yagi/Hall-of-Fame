class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to profile_path(@user)
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
