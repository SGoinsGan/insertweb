require 'test_helper'

class InsertPspostresponsesControllerTest < ActionController::TestCase
  setup do
    @insert_pspostresponse = insert_pspostresponses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insert_pspostresponses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insert_pspostresponse" do
    assert_difference('InsertPspostresponse.count') do
      post :create, insert_pspostresponse: { insertid: @insert_pspostresponse.insertid, latetrucks: @insert_pspostresponse.latetrucks, leftover: @insert_pspostresponse.leftover, postnote: @insert_pspostresponse.postnote, updatedby: @insert_pspostresponse.updatedby }
    end

    assert_redirected_to insert_pspostresponse_path(assigns(:insert_pspostresponse))
  end

  test "should show insert_pspostresponse" do
    get :show, id: @insert_pspostresponse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insert_pspostresponse
    assert_response :success
  end

  test "should update insert_pspostresponse" do
    patch :update, id: @insert_pspostresponse, insert_pspostresponse: { insertid: @insert_pspostresponse.insertid, latetrucks: @insert_pspostresponse.latetrucks, leftover: @insert_pspostresponse.leftover, postnote: @insert_pspostresponse.postnote, updatedby: @insert_pspostresponse.updatedby }
    assert_redirected_to insert_pspostresponse_path(assigns(:insert_pspostresponse))
  end

  test "should destroy insert_pspostresponse" do
    assert_difference('InsertPspostresponse.count', -1) do
      delete :destroy, id: @insert_pspostresponse
    end

    assert_redirected_to insert_pspostresponses_path
  end
end
