class ToppagesController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    if true
      @user = current_user
      #binding.pry
      @tasks = current_user.tasks.order('created_at DESC').page(params[:page])
    end
  end
end
