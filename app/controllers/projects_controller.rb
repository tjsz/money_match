class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @projects = Project.new(project_params)
    if @project.save
      redirect_to project_path
    else
      render "new"
  end

  def edit
    @projects = get_project
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
    @projects = get_project
  end

  def destroy
    @projects = get_project
    @projects.destroy
    redirect_to_project_path

  private
  def get_project
    Project.find(params[:id])
  end

  def project_params
   params.require(:project).permit(:title, :short_discription)
  end
end
end
end

#DonorsChoose.api_key="DONORSCHOOSE"
#DonorChoose::Project.by_zip(94117)
#projects.first.title
