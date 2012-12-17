class UsersController < ApplicationController

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @title = 'Profile ' + @user.name
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @title = 'Signup'
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    if @user.save
      # Обработка успешного сохранения.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
    render 'new'
    end
  end

end
