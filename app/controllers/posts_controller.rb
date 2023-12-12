class PostsController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @users = Users.find_by_id(params[:id])
  end
end
