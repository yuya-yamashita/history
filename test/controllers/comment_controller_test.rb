require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comment_new_url
    assert_response :success
  end

end
