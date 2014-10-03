class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to @user, notice: 'Your user has been created sucessfully.'
    else
      render :new
    end
  end

  def update

  end

  def destroy
  end

  def edit
  end

  def new
    @user = User.new
  end

  private

  def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
