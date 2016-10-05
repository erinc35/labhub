class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	@user.password = params[:password_hash]

  	if @user.save
  	  redirect_to user_path(@user)
  	else
  	  render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password_hash, :role)
  end
end
