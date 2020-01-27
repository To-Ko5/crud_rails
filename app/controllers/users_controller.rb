class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def index
    @users = User.all
  end

  def destroy
    user_data = User.find(params[:id])
    user_data.delete
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user_data = User.find(params[:id])
    user_data.update(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :age, :email)
  end

end