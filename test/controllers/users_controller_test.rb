require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get dash_boards" do
    get users_dash_boards_url
    assert_response :success
  end
end
