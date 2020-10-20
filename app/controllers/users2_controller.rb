class Users2Controller < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    
    user = User.create(uid: params[:user][:uid], pass: BCrypt::Password.create(params[:user][:pass]))
    redirect_to '/'
  end 
end
