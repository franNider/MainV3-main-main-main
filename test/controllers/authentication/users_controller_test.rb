require "test_helper"

class Authentication::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { email: 'mateo@prueba.com', dni: '11111111', nombre: 'mateo', apellido: 'prueba', password: 'testme' } }
    end

    assert_redirected_to inicio_url
  end
end