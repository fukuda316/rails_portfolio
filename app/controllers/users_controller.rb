class UsersController < ApplicationController
  def new
    @user = User.new
    @prefecture = Prefecture.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to("/")
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :prefecture, :password, :password_confirmation)
    end
end
