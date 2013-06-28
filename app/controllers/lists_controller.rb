class ListsController < ApplicationController
  def index
    @users = User.all
  end

  def home
    @lists = List.all
  end


  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(params[:list])
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
