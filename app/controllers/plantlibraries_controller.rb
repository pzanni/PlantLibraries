class PlantlibrariesController < ApplicationController
  def new
  end

  def index
  	@plantlibraries = Plantlibrary.all
  end

  def show
  	@plantlibrary = Plantlibrary.find(params[:id])
  end

  def create
  end
end
