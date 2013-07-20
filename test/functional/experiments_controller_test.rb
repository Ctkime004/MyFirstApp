require 'test_helper'

class ExperimentsControllerTest < ActionController::TestCase
  setup do
    @experiment = experiments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiments)
  end

  test "should be redirected when not logged in" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should render the new page when logged in" do
    sign_in users(:corey)
    get :new
    assert_response :success
  end

  test "should create experiment" do
    assert_difference('Experiment.count') do
      post :create, experiment: { details: @experiment.details, experimenttype: @experiment.experimenttype, startdate: @experiment.startdate, stopdate: @experiment.stopdate, title: @experiment.title }
    end

    assert_redirected_to experiment_path(assigns(:experiment))
  end

  test "should show experiment" do
    get :show, id: @experiment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experiment
    assert_response :success
  end

  test "should update experiment" do
    put :update, id: @experiment, experiment: { details: @experiment.details, experimenttype: @experiment.experimenttype, startdate: @experiment.startdate, stopdate: @experiment.stopdate, title: @experiment.title }
    assert_redirected_to experiment_path(assigns(:experiment))
  end

  test "should destroy experiment" do
    assert_difference('Experiment.count', -1) do
      delete :destroy, id: @experiment
    end

    assert_redirected_to experiments_path
  end
end
