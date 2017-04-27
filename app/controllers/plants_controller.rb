class PlantsController < ApplicationController
	def index
		@plants = Plant.all
	end

	def show
		@plant = Plant.find(params[:id])
		@plantlibrary = @plant.plantlibrary
	end

  def new
  end

  def create
  end
end
