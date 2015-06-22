require 'test_helper'

class InsertPsresponsesControllerTest < ActionController::TestCase
  setup do
    @insert_psresponse = insert_psresponses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insert_psresponses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insert_psresponse" do
    assert_difference('InsertPsresponse.count') do
      post :create, insert_psresponse: { conditionid: @insert_psresponse.conditionid, insertid: @insert_psresponse.insertid, lookupid: @insert_psresponse.lookupid, quantityrec: @insert_psresponse.quantityrec, receivedby: @insert_psresponse.receivedby, receiveddate: @insert_psresponse.receiveddate, receivednote: @insert_psresponse.receivednote, updatedby: @insert_psresponse.updatedby }
    end

    assert_redirected_to insert_psresponse_path(assigns(:insert_psresponse))
  end

  test "should show insert_psresponse" do
    get :show, id: @insert_psresponse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insert_psresponse
    assert_response :success
  end

  test "should update insert_psresponse" do
    patch :update, id: @insert_psresponse, insert_psresponse: { conditionid: @insert_psresponse.conditionid, insertid: @insert_psresponse.insertid, lookupid: @insert_psresponse.lookupid, quantityrec: @insert_psresponse.quantityrec, receivedby: @insert_psresponse.receivedby, receiveddate: @insert_psresponse.receiveddate, receivednote: @insert_psresponse.receivednote, updatedby: @insert_psresponse.updatedby }
    assert_redirected_to insert_psresponse_path(assigns(:insert_psresponse))
  end

  test "should destroy insert_psresponse" do
    assert_difference('InsertPsresponse.count', -1) do
      delete :destroy, id: @insert_psresponse
    end

    assert_redirected_to insert_psresponses_path
  end
end
