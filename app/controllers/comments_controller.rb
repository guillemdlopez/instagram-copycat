class CommentsController < ApplicationController
  before_action :find_post, only: [:create]
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new; end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user

    authorize @comment

    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def edit; end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@comment.post)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    authorize @comment

    redirect_to post_path(@comment.post)
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
