class UsersController < ApplicationController
  def index
    #
  end
  def create
    session[:nick]=params[:nick]
    @user = User.new({:first_name => session[:fname],
                      :second_name => session[:sname],
                      :nickname => session[:nick],
                      :email => session[:email_p],
                      :encrypted_password => session[:password_p]})
    @user.save
    if @user.valid?
      session[:cur_user] = @user.id
      redirect_to "/project_menu"
    else
      redirect_to "/authorisation"
    end
  end
  def login
    u = User.find_by_email(params[:em_log])
    if u.present? && u.password == params[:pas_log]
      session[:cur_user] = u.id
      redirect_to "/project_menu"
    else
      redirect_to "/signin"
    end
  end
  def set_email_password
    session[:email_p]=params[:em]
    session[:password_p]=params[:pas]
    redirect_to "/signup/set_name"
  end
  def set_first_second_name
    session[:fname]=params[:fname]
    session[:sname]=params[:sname]
    redirect_to "/signup/set_nickname"
  end
end