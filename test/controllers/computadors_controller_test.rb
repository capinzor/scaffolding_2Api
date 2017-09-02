require 'test_helper'

class ComputadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computador = computadors(:one)
  end

  test "should get index" do
    get computadors_url, as: :json
    assert_response :success
  end

  test "should create computador" do
    assert_difference('Computador.count') do
      post computadors_url, params: { computador: { gigas_de_capacidad: @computador.gigas_de_capacidad, gigas_de_ram: @computador.gigas_de_ram, marca: @computador.marca, procesador: @computador.procesador } }, as: :json
    end

    assert_response 201
  end

  test "should show computador" do
    get computador_url(@computador), as: :json
    assert_response :success
  end

  test "should update computador" do
    patch computador_url(@computador), params: { computador: { gigas_de_capacidad: @computador.gigas_de_capacidad, gigas_de_ram: @computador.gigas_de_ram, marca: @computador.marca, procesador: @computador.procesador } }, as: :json
    assert_response 200
  end

  test "should destroy computador" do
    assert_difference('Computador.count', -1) do
      delete computador_url(@computador), as: :json
    end

    assert_response 204
  end
end
