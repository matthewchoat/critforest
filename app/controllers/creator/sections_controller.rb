class Creator::SectionsController < ApplicationController
  def new
    @guide = Guide.find(params[:guide_id])
    @section = Section.new
  end

  def create
    @section = current_guide.sections.create(section_params)
    redirect_to creator_guide_path(current_guide)
  end

  private

  def current_section
    @current_section ||= Section.find(params[:id])
  end


 helper_method :current_guide
  def current_guide
    if params[:guide_id]
      @current_guide ||= Guide.find(params[:guide_id])
    else
      current_section.guide_id
    end
  end

  def section_params
    params.require(:section).permit(:title)
  end

end
