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
      log_in @user
      flash[:success]= "MY_BLOGへようこそ"
      redirect_to @user  
    else
      render 'new'
    end 
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success]= "プロフィールを更新しました"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:sucsess]= "ユーザーを消去しました。"
    redirect_to users_url
  end

  private
  def user_params
    # params.require(:user).permit(:name, :email)
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
