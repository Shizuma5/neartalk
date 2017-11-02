class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy, :show]

  def new
    @micropost = current_user.microposts.new
  end

  def show
    @user = current_user
    @microposts = Micropost.all
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
