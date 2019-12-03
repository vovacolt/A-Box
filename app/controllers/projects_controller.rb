class ProjectsController < ApplicationController
  def index
    render json: {message: 'Привет', projects: Project.all}
  end
end