class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:username] || params[:username].empty? then
      redirect_to login_path
    else
      session[:username] = params[:username]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :username
    redirect_to root_path
  end

end
