class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update]
   
   def edit
    @user = User.find(current_user.id)
   end
 
   def update
    if @user.update(user_params)
       redirect_to profile_path
     else
       render :edit
     end
   end
 
   def show
    @user = User.find_by(id: params[:id])
   end
 
   private
 
  
 
   def user_params
     params.require(:user).permit(:name,:email,:introduction,:favorite_team,:avatar)
   end
 end