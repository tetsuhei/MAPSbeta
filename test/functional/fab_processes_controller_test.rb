require 'test_helper'

class FabProcessesControllerTest < ActionController::TestCase
  setup do
    @fab_process = fab_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fab_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fab_process" do
    assert_difference('FabProcess.count') do
      post :create, :fab_process => @fab_process.attributes
    end

    assert_redirected_to fab_process_path(assigns(:fab_process))
  end

  test "should show fab_process" do
    get :show, :id => @fab_process.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fab_process.to_param
    assert_response :success
  end

  test "should update fab_process" do
    put :update, :id => @fab_process.to_param, :fab_process => @fab_process.attributes
    assert_redirected_to fab_process_path(assigns(:fab_process))
  end

  test "should destroy fab_process" do
    assert_difference('FabProcess.count', -1) do
      delete :destroy, :id => @fab_process.to_param
    end

    assert_redirected_to fab_processes_path
  end
end
