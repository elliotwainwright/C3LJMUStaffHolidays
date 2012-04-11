class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Logged in Successfully"
      redirect_to :controller => 'holidays', :action => 'index'
    else
      flash.now[:error] = "Invalid Login Credentials or Password"
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You Have Been Logged Out"
    redirect_to root_url
  end
end
