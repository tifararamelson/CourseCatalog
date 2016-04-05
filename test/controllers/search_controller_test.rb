require "test_helper"

class SearchControllerTest < ActionController::TestCase
  def test_do_search
    get :do_search
    assert_response :success
  end

end
