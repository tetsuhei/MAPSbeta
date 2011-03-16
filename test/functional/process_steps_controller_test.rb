require 'test_helper'

class ProcessStepsControllerTest < ActionController::TestCase
  setup do
    @process_step = process_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:process_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create process_step" do
    assert_difference('ProcessStep.count') do
      post :create, :process_step => @process_step.attributes
    end

    assert_redirected_to process_step_path(assigns(:process_step))
  end

  test "should show process_step" do
    get :show, :id => @process_step.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @process_step.to_param
    assert_response :success
  end

  test "should update process_step" do
    put :update, :id => @process_step.to_param, :process_step => @process_step.attributes
    assert_redirected_to process_step_path(assigns(:process_step))
  end

  test "should destroy process_step" do
    assert_difference('ProcessStep.count', -1) do
      delete :destroy, :id => @process_step.to_param
    end

    assert_redirected_to process_steps_path
  end
end
