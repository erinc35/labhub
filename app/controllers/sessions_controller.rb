class SessionsController < ApplicationController
  # skip_before_filter :require_login

  def new
  end

  def create
    # p params[:session][:email]
    @user = User.authenticate(params[:session][:email], params[:session][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = ['could not log in...']
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end