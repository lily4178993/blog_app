class PostsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find_by_id(params[:id])
  end
end
