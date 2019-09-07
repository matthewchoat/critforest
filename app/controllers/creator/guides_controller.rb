class Creator::GuidesController < ApplicationController
  before_action :authenticate_user!

  def new
    @guide = Guide.new
  end

  def create
    @guide = current_user.guides.create(guide_params)
    if @guide.valid?
      redirect_to creator_guide_path(@guide)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :description, :platform)
  end
end
