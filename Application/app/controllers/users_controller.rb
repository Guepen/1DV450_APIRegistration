class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      apikey = Apikey.new
      apikey.user = @user
      apikey.key = apikey.generate_api_key
      apikey.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    apikey = Apikey.find_by_user_id(@user.id)
    @key = apikey.key
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
