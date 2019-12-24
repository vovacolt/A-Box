class ProjectsController < ApplicationController
  def index
    render json: {message: 'Привет', projects: Project.all}
  end

  def project_menu
    @projects = Project.All
  end
end