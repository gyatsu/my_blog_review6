class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy,]
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to "/posts/#{@post.id}"
  end
  def show
    # @post = Post.find(params[:id])
  end
  def index
    @posts = Post.all
  end
  def edit
    # @post = Post.find(params[:id])
  end
  def update
    # @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to "/posts/#{@post.id}"
  end
  def destroy
    # @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/"
  end
  private
  def post_params
    params.require(:post).permit(
      :title,
      :body,
      :category
      )
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
