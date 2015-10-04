class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render "new"
    end
  end

  def edit
    @project = get_project
  end

  def update
    @project = get_project
    if @project.update(project_params)
      redirect_to project_path(@project), notice: "Project successfully updated"
    else
      render "edit"
    end
  end

  def show
    @project = get_project
  end

  def destroy
    @projects = get_project
    @projects.destroy
    redirect_to projects_path
  end

  private
  
  def get_project
    Project.find(params[:id])
  end

  def project_params
   params.require(:project).permit(:title, :short_discription, :grade_level, :expiration_date)
  end
end

#DonorsChoose.api_key="DONORSCHOOSE"
#DonorChoose::Project.by_zip(94117)
#projects.first.title
