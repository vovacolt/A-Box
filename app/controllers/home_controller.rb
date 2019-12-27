class HomeController < ApplicationController
  def index

  end

  def authorisation

  end

  def signin

  end

  def signup

  end

  def project_menu
    #@projects = UserProject.where(session[:cur_user] = :user_id)
    #@projects = Project.where(session[:cur_user] = :user_id)

    us = session[:cur_user]
    cuser = User.find_by_id(us)
    @projects = cuser.projects
    #up =  UserProject.where(users_id: us).pluck(:projects_id)
    #@projects = Project.where(up.include?(:id))
    #@projects = Project.all
  end

  def import_project

  end

  def import_setting

  end

  def add_project

  end

  def add_setting

  end

  def profile

  end

  def enter_password

  end

  def set_new_password

  end

  def project

  end

  def default_scene
    render :default_scene, layout: nil
  end

  def test

  end

end

