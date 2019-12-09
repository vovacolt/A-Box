class UsersController < ApplicationController
  def index
    #
  end
  def create
    $nick = params[:nick]
    @user = User.new({:first_name => $fname,
                      :second_name => $sname,
                      :nickname => $nick,
                      :email => $email_p,
                      :encrypted_password => $password_p})
    @user.save
    if @user.save
      redirect_to "/project_menu"
    else
      redirect_to "/authorisation"
    end
  end
  def login
    #$cur_user = User.first(:conditions => ["email = ? AND encrypted_password = ?", params[:em_log], params[:pas_log]])
    $cur_user = User.first(:conditions => { :email => params[:em_log], :encrypted_password => params[:pas_log]})
    if $cur_user
      redirect_to "/project_menu"
    else
      redirect_to "/authorisation"
    end
  end
  def set_email_password
    $email_p = params[:em]
    $password_p = params[:pas]
    redirect_to "/signup/set_name"
  end
  def set_first_second_name
    $fname = params[:fname]
    $sname = params[:sname]
    redirect_to "/signup/set_nickname"
  end
end