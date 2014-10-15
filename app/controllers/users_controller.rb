class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  # def destroy
  #   if User[:user_id] = nil
  #   # redirect_to root_url, notice: "Logged out!"
  # end
end
