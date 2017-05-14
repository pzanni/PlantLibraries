class PlantclubsController < ApplicationController
  before_action :set_plantclub, only: [:show, :edit, :update, :destroy]

  # GET /plantclubs
  # GET /plantclubs.json
  def index
    @plantclubs = Plantclub.all
  end

  # GET /plantclubs/1
  # GET /plantclubs/1.json
  def show
  end

  # GET /plantclubs/new
  def new
    @plantclub = Plantclub.new
  end

  # GET /plantclubs/1/edit
  def edit
  end

  # POST /plantclubs
  # POST /plantclubs.json
  def create
    @plantclub = Plantclub.new(plantclub_params)

    respond_to do |format|
      if @plantclub.save
        format.html { redirect_to @plantclub, notice: 'Plantclub was successfully created.' }
        format.json { render :show, status: :created, location: @plantclub }
      else
        format.html { render :new }
        format.json { render json: @plantclub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantclubs/1
  # PATCH/PUT /plantclubs/1.json
  def update
    respond_to do |format|
      if @plantclub.update(plantclub_params)
        format.html { redirect_to @plantclub, notice: 'Plantclub was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantclub }
      else
        format.html { render :edit }
        format.json { render json: @plantclub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantclubs/1
  # DELETE /plantclubs/1.json
  def destroy
    @plantclub.destroy
    respond_to do |format|
      format.html { redirect_to plantclubs_url, notice: 'Plantclub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantclub
      @plantclub = Plantclub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plantclub_params
      params.require(:plantclub).permit(:name)
    end
end
