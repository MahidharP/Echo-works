require 'test_helper'

class WorkshopTypesControllerTest < ActionController::TestCase
  setup do
    @workshop_type = workshop_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workshop_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workshop_type" do
    assert_difference('WorkshopType.count') do
      post :create, workshop_type: { name: @workshop_type.name }
    end

    assert_redirected_to workshop_type_path(assigns(:workshop_type))
  end

  test "should show workshop_type" do
    get :show, id: @workshop_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workshop_type
    assert_response :success
  end

  test "should update workshop_type" do
    patch :update, id: @workshop_type, workshop_type: { name: @workshop_type.name }
    assert_redirected_to workshop_type_path(assigns(:workshop_type))
  end

  test "should destroy workshop_type" do
    assert_difference('WorkshopType.count', -1) do
      delete :destroy, id: @workshop_type
    end

    assert_redirected_to workshop_types_path
  end
end
