require 'test_helper'

class ProcessFlowsControllerTest < ActionController::TestCase
  setup do
    @process_flow = process_flows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:process_flows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create process_flow" do
    assert_difference('ProcessFlow.count') do
      post :create, :process_flow => @process_flow.attributes
    end

    assert_redirected_to process_flow_path(assigns(:process_flow))
  end

  test "should show process_flow" do
    get :show, :id => @process_flow.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @process_flow.to_param
    assert_response :success
  end

  test "should update process_flow" do
    put :update, :id => @process_flow.to_param, :process_flow => @process_flow.attributes
    assert_redirected_to process_flow_path(assigns(:process_flow))
  end

  test "should destroy process_flow" do
    assert_difference('ProcessFlow.count', -1) do
      delete :destroy, :id => @process_flow.to_param
    end

    assert_redirected_to process_flows_path
  end
end
