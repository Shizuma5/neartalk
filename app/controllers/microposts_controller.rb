class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show]

  def show
    @user = current_user
    @microposts = Micropost.all
  end

  def create
  end

  def destroy
  end
end
