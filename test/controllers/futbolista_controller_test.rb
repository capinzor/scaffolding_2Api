require 'test_helper'

class FutbolistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @futbolistum = futbolista(:one)
  end

  test "should get index" do
    get futbolista_url, as: :json
    assert_response :success
  end

  test "should create futbolistum" do
    assert_difference('Futbolistum.count') do
      post futbolista_url, params: { futbolistum: { apellido: @futbolistum.apellido, edad: @futbolistum.edad, equipo: @futbolistum.equipo, estatura: @futbolistum.estatura, nombre: @futbolistum.nombre, posicion: @futbolistum.posicion } }, as: :json
    end

    assert_response 201
  end

  test "should show futbolistum" do
    get futbolistum_url(@futbolistum), as: :json
    assert_response :success
  end

  test "should update futbolistum" do
    patch futbolistum_url(@futbolistum), params: { futbolistum: { apellido: @futbolistum.apellido, edad: @futbolistum.edad, equipo: @futbolistum.equipo, estatura: @futbolistum.estatura, nombre: @futbolistum.nombre, posicion: @futbolistum.posicion } }, as: :json
    assert_response 200
  end

  test "should destroy futbolistum" do
    assert_difference('Futbolistum.count', -1) do
      delete futbolistum_url(@futbolistum), as: :json
    end

    assert_response 204
  end
end
