class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name] == ''
      redirect_to new_session_path
    else
      redirect_to user_path
    end
  end

  def show
    @user = self.current_user
  end


  def destroy
    session.delete :name
  end

  
end
