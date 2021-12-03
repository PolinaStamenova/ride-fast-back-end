require "test_helper"

class Api::V1::AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_auth_index_url
    assert_response :success
  end
end
