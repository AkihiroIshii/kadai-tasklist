class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page])
  end

  def new
  end

  def show
  end

  def create
  end
end
