require 'test_helper'

class HistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get history_top_url
    assert_response :success
  end

end
