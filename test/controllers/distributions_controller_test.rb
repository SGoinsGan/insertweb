require 'test_helper'

class DistributionsControllerTest < ActionController::TestCase
  setup do
    @distribution = distributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distribution" do
    assert_difference('Distribution.count') do
      post :create, distribution: { acitve: @distribution.acitve, active_date: @distribution.active_date, address: @distribution.address, created_at: @distribution.created_at, created_by: @distribution.created_by, description: @distribution.description, distribution_code: @distribution.distribution_code, inactive_date: @distribution.inactive_date, level_number: @distribution.level_number, lookup_id: @distribution.lookup_id, newspaper_name: @distribution.newspaper_name, parent_id: @distribution.parent_id, parent_lookup_id: @distribution.parent_lookup_id, pub_id: @distribution.pub_id, sort: @distribution.sort, text_active: @distribution.text_active, updated_at: @distribution.updated_at, updated_by: @distribution.updated_by }
    end

    assert_redirected_to distribution_path(assigns(:distribution))
  end

  test "should show distribution" do
    get :show, id: @distribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distribution
    assert_response :success
  end

  test "should update distribution" do
    patch :update, id: @distribution, distribution: { acitve: @distribution.acitve, active_date: @distribution.active_date, address: @distribution.address, created_at: @distribution.created_at, created_by: @distribution.created_by, description: @distribution.description, distribution_code: @distribution.distribution_code, inactive_date: @distribution.inactive_date, level_number: @distribution.level_number, lookup_id: @distribution.lookup_id, newspaper_name: @distribution.newspaper_name, parent_id: @distribution.parent_id, parent_lookup_id: @distribution.parent_lookup_id, pub_id: @distribution.pub_id, sort: @distribution.sort, text_active: @distribution.text_active, updated_at: @distribution.updated_at, updated_by: @distribution.updated_by }
    assert_redirected_to distribution_path(assigns(:distribution))
  end

  test "should destroy distribution" do
    assert_difference('Distribution.count', -1) do
      delete :destroy, id: @distribution
    end

    assert_redirected_to distributions_path
  end
end
