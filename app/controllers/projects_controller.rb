class ProjectsController < ApplicationController
  def index
    render json: {message: 'Привет', projects: Project.all}
  end
  def add
    pr_name = params[:pr_name]
    pr_url = params[:pr_url]
    if Project.find_by_proj_url(pr_url).present?
      redirect_to '/project_menu/add_project'
    else
      proj = Project.new({:proj_name => pr_name, :proj_url => pr_url})
      proj.save
      up = UserProject.new({:user_id => session[:cur_user],:project_id => proj.id})
      up.save!
      redirect_to '/project_menu'
    end
  end
end