class Band::PracticesController < ApplicationController
  before_action :set_band_practice, only: [:show, :edit, :update, :destroy]

  # GET /band/practices
  # GET /band/practices.json
  def index
    @band_practices = Band::Practice.all
  end

  # GET /band/practices/1
  # GET /band/practices/1.json
  def show
  end

  # GET /band/practices/new
  def new
    @band_practice = Band::Practice.new
  end

  # GET /band/practices/1/edit
  def edit
  end

  # POST /band/practices
  # POST /band/practices.json
  def create
    @band_practice = Band::Practice.new(band_practice_params)

    respond_to do |format|
      if @band_practice.save
        format.html { redirect_to @band_practice, notice: 'Practice was successfully created.' }
        format.json { render :show, status: :created, location: @band_practice }
      else
        format.html { render :new }
        format.json { render json: @band_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band/practices/1
  # PATCH/PUT /band/practices/1.json
  def update
    respond_to do |format|
      if @band_practice.update(band_practice_params)
        format.html { redirect_to @band_practice, notice: 'Practice was successfully updated.' }
        format.json { render :show, status: :ok, location: @band_practice }
      else
        format.html { render :edit }
        format.json { render json: @band_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band/practices/1
  # DELETE /band/practices/1.json
  def destroy
    @band_practice.destroy
    respond_to do |format|
      format.html { redirect_to band_practices_url, notice: 'Practice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_practice
      @band_practice = Band::Practice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_practice_params
      params.fetch(:band_practice, {})
    end
end
