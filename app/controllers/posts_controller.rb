class PostsController < ApplicationController
  def index
    @users = Post.all
  end

  def show
    @users = Post.find_by_id(params[:id])
  end
end
