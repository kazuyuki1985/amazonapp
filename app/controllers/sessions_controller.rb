class SessionsController < ApplicationController

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      Rails.logger.debug(@user) 
      redirect_back_or_to(root_path)
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to welcome_path
  end
end
