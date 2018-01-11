class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, admin: :all
  layout "project"

  # GET /projects
  def index
    @projects = Project.all.order('position ASC')
  end

  # GET /projects/sort
  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

  # GET /projects/1
  def show
    @page_title = @project.title
    @seo_keyword = @project.body
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.position = Project.count
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :subtitle, :body, :main_image, :thumb_image)
    end
end
