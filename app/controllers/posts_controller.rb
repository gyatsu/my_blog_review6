class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to "/posts/#{@post.id}"
  end
  private
  def post_params
    params.require(:post).permit(
      :title,
      :body,
      :category
      )
  end
end
