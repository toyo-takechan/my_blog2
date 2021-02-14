class UsersController < ApplicationController
  def index
    # @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    # if User.create(user_params)
      redirect_to root_url     
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private
  def user_params
    # params.require(:user).permit(:name, :email)
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
