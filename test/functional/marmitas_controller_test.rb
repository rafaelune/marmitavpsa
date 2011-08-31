require 'test_helper'

class MarmitasControllerTest < ActionController::TestCase
  setup do
    @marmita = marmitas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marmitas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marmita" do
    assert_difference('Marmita.count') do
      post :create, :marmita => @marmita.attributes
    end

    assert_redirected_to marmita_path(assigns(:marmita))
  end

  test "should show marmita" do
    get :show, :id => @marmita.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @marmita.to_param
    assert_response :success
  end

  test "should update marmita" do
    put :update, :id => @marmita.to_param, :marmita => @marmita.attributes
    assert_redirected_to marmita_path(assigns(:marmita))
  end

  test "should destroy marmita" do
    assert_difference('Marmita.count', -1) do
      delete :destroy, :id => @marmita.to_param
    end

    assert_redirected_to marmitas_path
  end
end
