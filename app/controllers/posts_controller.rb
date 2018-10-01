class PostsController < ApplicationController
  def index
    @posts = Post.all
    @new_post = Post.new
  end

  def create
    @post = Post.new(params[:post].permit(:name, :email, :body))
    @post.save
    redirect_to posts_index_path
  end

end
