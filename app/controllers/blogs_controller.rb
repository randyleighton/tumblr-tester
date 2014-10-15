class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    @users = User.all
    # @user = User.find(params[:user_id])
    # binding.pry
  end

  def show
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
    @user = User.find(params[:user_id])
  end

  private


end
