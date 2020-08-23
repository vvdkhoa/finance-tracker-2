require 'test_helper'

class MyPortfolioControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get my_portfolio_create_url
    assert_response :success
  end

end
