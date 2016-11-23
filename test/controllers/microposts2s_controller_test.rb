require 'test_helper'

class Microposts2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microposts2 = microposts2s(:one)
  end

  test "should get index" do
    get microposts2s_url
    assert_response :success
  end

  test "should get new" do
    get new_microposts2_url
    assert_response :success
  end

  test "should create microposts2" do
    assert_difference('Microposts2.count') do
      post microposts2s_url, params: { microposts2: { message: @microposts2.message, user_id: @microposts2.user_id } }
    end

    assert_redirected_to microposts2_url(Microposts2.last)
  end

  test "should show microposts2" do
    get microposts2_url(@microposts2)
    assert_response :success
  end

  test "should get edit" do
    get edit_microposts2_url(@microposts2)
    assert_response :success
  end

  test "should update microposts2" do
    patch microposts2_url(@microposts2), params: { microposts2: { message: @microposts2.message, user_id: @microposts2.user_id } }
    assert_redirected_to microposts2_url(@microposts2)
  end

  test "should destroy microposts2" do
    assert_difference('Microposts2.count', -1) do
      delete microposts2_url(@microposts2)
    end

    assert_redirected_to microposts2s_url
  end
end
