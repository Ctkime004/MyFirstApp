require 'test_helper'

class PpcAdCopiesControllerTest < ActionController::TestCase
  setup do
    @ppc_ad_copy = ppc_ad_copies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ppc_ad_copies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ppc_ad_copy" do
    assert_difference('PpcAdCopy.count') do
      post :create, ppc_ad_copy: { CPC: @ppc_ad_copy.CPC, Clicks: @ppc_ad_copy.Clicks, Conversions: @ppc_ad_copy.Conversions, Impressions: @ppc_ad_copy.Impressions }
    end

    assert_redirected_to ppc_ad_copy_path(assigns(:ppc_ad_copy))
  end

  test "should show ppc_ad_copy" do
    get :show, id: @ppc_ad_copy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ppc_ad_copy
    assert_response :success
  end

  test "should update ppc_ad_copy" do
    put :update, id: @ppc_ad_copy, ppc_ad_copy: { CPC: @ppc_ad_copy.CPC, Clicks: @ppc_ad_copy.Clicks, Conversions: @ppc_ad_copy.Conversions, Impressions: @ppc_ad_copy.Impressions }
    assert_redirected_to ppc_ad_copy_path(assigns(:ppc_ad_copy))
  end

  test "should destroy ppc_ad_copy" do
    assert_difference('PpcAdCopy.count', -1) do
      delete :destroy, id: @ppc_ad_copy
    end

    assert_redirected_to ppc_ad_copies_path
  end
end
