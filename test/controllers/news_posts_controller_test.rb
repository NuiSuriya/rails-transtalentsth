require "test_helper"

class NewsPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get news_posts_show_url
    assert_response :success
  end
end
