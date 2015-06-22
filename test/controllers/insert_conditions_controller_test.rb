require 'test_helper'

class InsertConditionsControllerTest < ActionController::TestCase
  setup do
    @insert_condition = insert_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insert_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insert_condition" do
    assert_difference('InsertCondition.count') do
      post :create, insert_condition: { conditionname: @insert_condition.conditionname, responsecode: @insert_condition.responsecode }
    end

    assert_redirected_to insert_condition_path(assigns(:insert_condition))
  end

  test "should show insert_condition" do
    get :show, id: @insert_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insert_condition
    assert_response :success
  end

  test "should update insert_condition" do
    patch :update, id: @insert_condition, insert_condition: { conditionname: @insert_condition.conditionname, responsecode: @insert_condition.responsecode }
    assert_redirected_to insert_condition_path(assigns(:insert_condition))
  end

  test "should destroy insert_condition" do
    assert_difference('InsertCondition.count', -1) do
      delete :destroy, id: @insert_condition
    end

    assert_redirected_to insert_conditions_path
  end
end
