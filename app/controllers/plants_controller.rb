class PlantsController < ApplicationController
	def index
		@plants = Plant.all
	end

	def show
		@plant = Plant.find(params[:id])
		@plantlibrary = @plant.plantlibrary
	end

	def edit
	end

	def update
	end

  def new
  	@plant = Plant.new
  end

  def plant_params
    params.require(:plant.permit(:name, :description))
  end

  def create
  	if current_user != nil
	  	@plant = Plant.new(plant_params)
	  	@plant.plantlibrary = current_user.plantlibrary

	    respond_to do |format|
	      if @plant.save
	        format.html { redirect_to plantlibraries_path, notice: 'Plant was successfully created.' }
	        format.json { render :show, status: :created, location: @plant }
	      end
	    end
	end
  end
end
