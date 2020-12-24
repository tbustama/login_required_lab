class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:user][:name]
    if session[:name] == nil || session[:name] == ''
      redirect_to new_session_path
    else
      redirect_to user_path
    end
  end

  def show

  end

  

  def destroy
    session.delete :name
  end

  
end
