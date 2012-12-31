class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id if user.respond_to?('id') && User.exists?(user.id.to_i)
      redirect_to home_index_path, flash[:info] => "Authenticated!"
    else
      flash[:error] = "Either your email or password was incorrect"
      render "new"
    end
  end 
  
  def destroy
    reset_session
    redirect_to root_path
  end
  
end
