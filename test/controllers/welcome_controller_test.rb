require 'test_helper'

class wellcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get wellcome_create_url
    assert_response :success
  end

end
