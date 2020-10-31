class ProfilesController < ApplicationController

  def show
    @user = current_user
    @user.posts

    skip_authorization
  end
end
