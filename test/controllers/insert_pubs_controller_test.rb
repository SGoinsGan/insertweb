require 'test_helper'

class InsertPubsControllerTest < ActionController::TestCase
  setup do
    @insert_pub = insert_pubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insert_pubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insert_pub" do
    assert_difference('InsertPub.count') do
      post :create, insert_pub: { active: @insert_pub.active, ams_pub_code: @insert_pub.ams_pub_code, cci_edition: @insert_pub.cci_edition, cci_product: @insert_pub.cci_product, cci_zone: @insert_pub.cci_zone, create_by: @insert_pub.create_by, page_format_id: @insert_pub.page_format_id, pub_code: @insert_pub.pub_code, pub_name: @insert_pub.pub_name, text_active: @insert_pub.text_active, updated_by: @insert_pub.updated_by }
    end

    assert_redirected_to insert_pub_path(assigns(:insert_pub))
  end

  test "should show insert_pub" do
    get :show, id: @insert_pub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insert_pub
    assert_response :success
  end

  test "should update insert_pub" do
    patch :update, id: @insert_pub, insert_pub: { active: @insert_pub.active, ams_pub_code: @insert_pub.ams_pub_code, cci_edition: @insert_pub.cci_edition, cci_product: @insert_pub.cci_product, cci_zone: @insert_pub.cci_zone, create_by: @insert_pub.create_by, page_format_id: @insert_pub.page_format_id, pub_code: @insert_pub.pub_code, pub_name: @insert_pub.pub_name, text_active: @insert_pub.text_active, updated_by: @insert_pub.updated_by }
    assert_redirected_to insert_pub_path(assigns(:insert_pub))
  end

  test "should destroy insert_pub" do
    assert_difference('InsertPub.count', -1) do
      delete :destroy, id: @insert_pub
    end

    assert_redirected_to insert_pubs_path
  end
end
