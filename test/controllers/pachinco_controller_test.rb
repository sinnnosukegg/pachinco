require 'test_helper'

class PachincoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pachinco_index_url
    assert_response :success
  end

end
