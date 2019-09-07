class GuidesController < ApplicationController
  def index
    @guides = Guide.all
  end

  def show 
    @guide = Guide.find(params[:id])
  end
end
