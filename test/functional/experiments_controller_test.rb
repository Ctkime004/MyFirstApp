require 'test_helper'

class ExperimentsControllerTest < ActionController::TestCase
  setup do
    @experiment = experiments(:one)
  end

  test "should get index" do
    sign_in users(:corey)
    get :index
    assert_response :success
    assert_not_nil assigns(:experiments)
  end

  test "should be logged in to view index page" do
    get :index
    assert_response :redirect
    assert_redirected_to new_user_session_path    
  end

  test "should be redirected when not logged in for new experiment" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should render the new page when logged in" do
    sign_in users(:corey)
    get :new
    assert_response :success
  end

  test "should be logged in to post an experiment" do
    post :create, experiment: {details: "testing1234", experimenttype: "ad copy", startdate: "2013-07-13", stopdate: "2013-07-13", title: "title one"}
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should create experiment when logged in" do
    sign_in users(:corey)

    assert_difference('Experiment.count') do
      post :create, experiment: { details: @experiment.details, experimenttype: @experiment.experimenttype, startdate: @experiment.startdate, stopdate: @experiment.stopdate, title: @experiment.title }
    end

    assert_redirected_to experiment_path(assigns(:experiment))
  end

  test "should redirect to login page when enter show path and not logged in" do
    get :show, id: @experiment
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should show experiment" do
    sign_in users(:corey)
    get :show, id: @experiment
    assert_response :success
  end

  test "should be logged in to edit an experiment" do
    get :edit, id: @experiment
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should get edit when logged in" do
    sign_in users(:corey)
    get :edit, id: @experiment
    assert_response :success
  end

  test "should redirect update experiment when not logged in" do
    put :update, id: @experiment, experiment: { details: @experiment.details, experimenttype: @experiment.experimenttype, startdate: @experiment.startdate, stopdate: @experiment.stopdate, title: @experiment.title }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should update experiment" do
    sign_in users (:corey)
    put :update, id: @experiment, experiment: { details: @experiment.details, experimenttype: @experiment.experimenttype, startdate: @experiment.startdate, stopdate: @experiment.stopdate, title: @experiment.title }
    assert_redirected_to experiment_path(assigns(:experiment))
  end

  test "should destroy experiment" do
    sign_in users (:corey)
    assert_difference('Experiment.count', -1) do
      delete :destroy, id: @experiment
    end

    assert_redirected_to experiments_path
  end
end
