class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    if @user.save
      User.create(params[:user])
      redirect_to lists_path
    else
      render :new
    end
  end
end
