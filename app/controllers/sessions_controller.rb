class SessionsController < ApplicationController
  skip_before_filter :require_login, expt: [:destroy]

  def new
  end

  def create
    ＠user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to(root_path)
    else
      render :new
    end
  end

  def destroy
  end
end
