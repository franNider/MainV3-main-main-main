require "test_helper"

class ChequeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chequeo = chequeos(:one)
  end

  test "should get index" do
    get chequeos_url
    assert_response :success
  end

  test "should get new" do
    get new_chequeo_url
    assert_response :success
  end

  test "should create chequeo" do
    assert_difference("Chequeo.count") do
      post chequeos_url, params: { chequeo: { descripcion: @chequeo.descripcion, fecha: @chequeo.fecha } }
    end

    assert_redirected_to chequeo_url(Chequeo.last)
  end

  test "should show chequeo" do
    get chequeo_url(@chequeo)
    assert_response :success
  end

  test "should get edit" do
    get edit_chequeo_url(@chequeo)
    assert_response :success
  end

  test "should update chequeo" do
    patch chequeo_url(@chequeo), params: { chequeo: { descripcion: @chequeo.descripcion, fecha: @chequeo.fecha } }
    assert_redirected_to chequeo_url(@chequeo)
  end

  test "should destroy chequeo" do
    assert_difference("Chequeo.count", -1) do
      delete chequeo_url(@chequeo)
    end

    assert_redirected_to chequeos_url
  end
end
