class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  def index
    @posts = Post.all
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :url, :description, :image_url)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
