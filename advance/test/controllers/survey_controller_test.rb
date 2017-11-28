require 'test_helper'

class SurveyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get survey_show_url
    assert_response :success
  end

  test "should get result" do
    get survey_result_url
    assert_response :success
  end

end
