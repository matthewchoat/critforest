class Creator::PagesController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @page = Page.new
  end

  def create
    @page = current_section.pages.create(page_params)
    redirect_to creator_guide_path(current_section.guide)
  end

  def update
    current_page.update_attributes(page_params)
    render plain: 'updated!'
  end

  private

  def current_page
    @current_page ||= Page.find(params[:id])
  end

helper_method :current_section
  def current_section
    @current_section ||= Section.find(params[:section_id])
  end

  def page_params
    params.require(:page).permit(:title, :subtitle)
  end
end
