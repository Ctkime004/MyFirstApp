require 'test_helper'

class EmailsControllerTest < ActionController::TestCase
  setup do
    @email = emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email" do
    assert_difference('Email.count') do
      post :create, email: { click_percentage: @email.click_percentage, clicks: @email.clicks, conversion_percentage: @email.conversion_percentage, conversions: @email.conversions, delivered: @email.delivered, delivery_percentage: @email.delivery_percentage, open_percentage: @email.open_percentage, open_to_click_percentage: @email.open_to_click_percentage, opens: @email.opens, sends: @email.sends }
    end

    assert_redirected_to email_path(assigns(:email))
  end

  test "should show email" do
    get :show, id: @email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email
    assert_response :success
  end

  test "should update email" do
    put :update, id: @email, email: { click_percentage: @email.click_percentage, clicks: @email.clicks, conversion_percentage: @email.conversion_percentage, conversions: @email.conversions, delivered: @email.delivered, delivery_percentage: @email.delivery_percentage, open_percentage: @email.open_percentage, open_to_click_percentage: @email.open_to_click_percentage, opens: @email.opens, sends: @email.sends }
    assert_redirected_to email_path(assigns(:email))
  end

  test "should destroy email" do
    assert_difference('Email.count', -1) do
      delete :destroy, id: @email
    end

    assert_redirected_to emails_path
  end
end
