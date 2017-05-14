require 'test_helper'

class PlantclubsControllerTest < ActionController::TestCase
  setup do
    @plantclub = plantclubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plantclubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plantclub" do
    assert_difference('Plantclub.count') do
      post :create, plantclub: { name: @plantclub.name }
    end

    assert_redirected_to plantclub_path(assigns(:plantclub))
  end

  test "should show plantclub" do
    get :show, id: @plantclub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plantclub
    assert_response :success
  end

  test "should update plantclub" do
    patch :update, id: @plantclub, plantclub: { name: @plantclub.name }
    assert_redirected_to plantclub_path(assigns(:plantclub))
  end

  test "should destroy plantclub" do
    assert_difference('Plantclub.count', -1) do
      delete :destroy, id: @plantclub
    end

    assert_redirected_to plantclubs_path
  end
end
