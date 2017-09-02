class MascotaController < ApplicationController
  before_action :set_mascotum, only: [:show, :update, :destroy]

  # GET /mascota
  def index
    @mascota = Mascotum.all

    render json: @mascota
  end

  # GET /mascota/1
  def show
    render json: @mascotum
  end

  # POST /mascota
  def create
    @mascotum = Mascotum.new(mascotum_params)

    if @mascotum.save
      render json: @mascotum, status: :created, location: @mascotum
    else
      render json: @mascotum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mascota/1
  def update
    if @mascotum.update(mascotum_params)
      render json: @mascotum
    else
      render json: @mascotum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mascota/1
  def destroy
    @mascotum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mascotum
      @mascotum = Mascotum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mascotum_params
      params.require(:mascotum).permit(:nombre, :animal, :raza, :edad)
    end
end
