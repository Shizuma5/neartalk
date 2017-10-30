class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy, :show]

  def new
  end

  def show
    @user = current_user
    @microposts = Micropost.all
  end

  def create
  end

  def destroy
  end
end
