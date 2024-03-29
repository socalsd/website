require 'test_helper'

class SalonsControllerTest < ActionController::TestCase
  setup do
    @salon = salons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salon" do
    assert_difference('Salon.count') do
      post :create, salon: { address: @salon.address, city: @salon.city, name: @salon.name, phone: @salon.phone, state: @salon.state, url: @salon.url, zip: @salon.zip }
    end

    assert_redirected_to salon_path(assigns(:salon))
  end

  test "should show salon" do
    get :show, id: @salon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salon
    assert_response :success
  end

  test "should update salon" do
    put :update, id: @salon, salon: { address: @salon.address, city: @salon.city, name: @salon.name, phone: @salon.phone, state: @salon.state, url: @salon.url, zip: @salon.zip }
    assert_redirected_to salon_path(assigns(:salon))
  end

  test "should destroy salon" do
    assert_difference('Salon.count', -1) do
      delete :destroy, id: @salon
    end

    assert_redirected_to salons_path
  end
end
