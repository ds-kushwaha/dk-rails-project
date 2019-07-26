require 'test_helper'

class DkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dk_index_url
    assert_response :success
  end

end
