require 'test_helper'

class SizingrealControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get sizingreal_main_url
    assert_response :success
  end

  test "should get input" do
    get sizingreal_input_url
    assert_response :success
  end

  test "should get result" do
    get sizingreal_result_url
    assert_response :success
  end

  test "should get mypage" do
    get sizingreal_mypage_url
    assert_response :success
  end

end
