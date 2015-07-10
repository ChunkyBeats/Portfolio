class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @skills = Skill.all
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      skills = params[:project][:skill_ids]
      skills.each do |skill|
        if skill != ""
          @project.skills.push(Skill.find(skill))
        end
      end
      flash[:alert] = "MAKE ALL THE THINGS!"
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @skills = Skill.all
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    skills = params[:project][:skill_ids]
    skills.each do |skill|
      if skill != ""
        @project.skills.push(Skill.find(skill))
      end
    end
    redirect_to project_path(@project)
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
