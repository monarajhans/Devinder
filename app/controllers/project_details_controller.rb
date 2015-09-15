class ProjectDetailsController < ApplicationController
  def contribute
    ProjectDetail.create(user: User.find(session[:user_id]), project: Project.find(params[:id]), project_status: false)
    redirect_to :back
  end

  def offer
    ProjectDetail.create(user: User.find(params[:id]), project: Project.find(params[:p_id]), offer_status: false)
    redirect_to :back
  end
end