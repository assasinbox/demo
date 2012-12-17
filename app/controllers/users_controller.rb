class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = 'Profile ' + @user.name
  end

  def new
    @user = User.new
    @title = 'Signup'
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # Обработка успешного сохранения.
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
    render 'new'
    end
  end

end
