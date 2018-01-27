require 'test_helper'

class TagindexesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tagindexes_new_url
    assert_response :success
  end

end
