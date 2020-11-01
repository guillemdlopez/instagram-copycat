class ProfilesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @posts = @user.posts.order(created_at: :desc)
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path(@user.username)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find_by(username: params[:username])
    skip_authorization
  end

  def user_params
    params.require(:user).permit(:photo, :username, :full_name, :about, :email)
  end
end
