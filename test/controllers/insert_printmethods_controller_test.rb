require 'test_helper'

class InsertPrintmethodsControllerTest < ActionController::TestCase
  setup do
    @insert_printmethod = insert_printmethods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insert_printmethods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insert_printmethod" do
    assert_difference('InsertPrintmethod.count') do
      post :create, insert_printmethod: { methodname: @insert_printmethod.methodname }
    end

    assert_redirected_to insert_printmethod_path(assigns(:insert_printmethod))
  end

  test "should show insert_printmethod" do
    get :show, id: @insert_printmethod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insert_printmethod
    assert_response :success
  end

  test "should update insert_printmethod" do
    patch :update, id: @insert_printmethod, insert_printmethod: { methodname: @insert_printmethod.methodname }
    assert_redirected_to insert_printmethod_path(assigns(:insert_printmethod))
  end

  test "should destroy insert_printmethod" do
    assert_difference('InsertPrintmethod.count', -1) do
      delete :destroy, id: @insert_printmethod
    end

    assert_redirected_to insert_printmethods_path
  end
end
