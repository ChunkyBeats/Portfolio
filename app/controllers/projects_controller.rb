class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    # @skill = Skill.find(params[:skill_id])
    @project = Project.new
  end

  def create
    # @skill = Skill.find(params[:skill_id])
    # @project = @skill.projects.new(project_params)
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :link)
  end

end
