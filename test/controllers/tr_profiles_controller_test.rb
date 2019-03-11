require 'test_helper'

class TrProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get tr_profiles_controller_url
    assert_response :success
  end

end
