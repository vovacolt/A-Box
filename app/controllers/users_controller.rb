class UsersController < ApplicationController
  def index
    #
  end
  def create
    @user = User.new({:first_name => params[:prikol],
                      :second_name =>'test',
                      :nickname => 'nick',
                      :email => 'email@mail.ru',
                      :password => 'pass'})
    @user.save
  end
end