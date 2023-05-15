require 'test_helper'

class NewsletterControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get newsletter_new_url
    assert_response :success
  end

  test 'should get create' do
    get newsletter_create_url
    assert_response :success
  end
end
