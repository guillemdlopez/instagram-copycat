class PostsController < ApplicationController

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @post = Post.new
    authorize @post
  end
end
