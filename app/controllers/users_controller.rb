class UsersController < ApplicationController
  def main
    if session[:login_uid]
      render :main
    else
      render :login
    end 
  end

  def login
    if User.find_by(uid: params[:uid])
      if BCrypt::Password.new(params[:user][:pass]) 
        session[:login_uid] = params[:uid]
        redirect_to root_path
      end 
    end 
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end 
end
