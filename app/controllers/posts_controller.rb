class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
    @users = User.where.not(id: current_user.id)
  end

  def show
    @comments = @post.comments
    @comment = Comment.new
    @markers = [
      {
        lat: @post.latitude,
        lng: @post.longitude,
      }
    ]
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    if @post.save
      respond_to do |format|
      format.html { redirect_to post_path(@post), notice: 'The post was succesfully created! :)' }
      format.js {}
      end
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: 'Your post was succesfully updated!'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to dashboard_path, notice: 'Your post was destroyed!'
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:description, :photo, :location)
  end
end
