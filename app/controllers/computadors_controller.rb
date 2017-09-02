class ComputadorsController < ApplicationController
  before_action :set_computador, only: [:show, :update, :destroy]

  # GET /computadors
  def index
    @computadors = Computador.all

    render json: @computadors
  end

  # GET /computadors/1
  def show
    render json: @computador
  end

  # POST /computadors
  def create
    @computador = Computador.new(computador_params)

    if @computador.save
      render json: @computador, status: :created, location: @computador
    else
      render json: @computador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /computadors/1
  def update
    if @computador.update(computador_params)
      render json: @computador
    else
      render json: @computador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /computadors/1
  def destroy
    @computador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computador
      @computador = Computador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def computador_params
      params.require(:computador).permit(:marca, :procesador, :gigas_de_ram, :gigas_de_capacidad)
    end
end
