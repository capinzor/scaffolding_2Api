class FutbolistaController < ApplicationController
  before_action :set_futbolistum, only: [:show, :update, :destroy]

  # GET /futbolista
  def index
    @futbolista = Futbolistum.all

    render json: @futbolista
  end

  # GET /futbolista/1
  def show
    render json: @futbolistum
  end

  # POST /futbolista
  def create
    @futbolistum = Futbolistum.new(futbolistum_params)

    if @futbolistum.save
      render json: @futbolistum, status: :created, location: @futbolistum
    else
      render json: @futbolistum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /futbolista/1
  def update
    if @futbolistum.update(futbolistum_params)
      render json: @futbolistum
    else
      render json: @futbolistum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /futbolista/1
  def destroy
    @futbolistum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futbolistum
      @futbolistum = Futbolistum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futbolistum_params
      params.require(:futbolistum).permit(:nombre, :apellido, :equipo, :posicion, :edad, :estatura)
    end
end
