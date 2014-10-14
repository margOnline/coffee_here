require 'test_helper'

class MainControllerTest < ActionController::TestCase
  should "get index" do
    get :index
    assert_response :success
  end

  context 'search' do
    should 'return a list of venues' do
      get :search, :postcode => 'ec1r 0jh'
      assert_assigns :venues
      assert_response :success
    end

    should 'render the index page when an invalid postcode is entered' do
      get :search, :postcode => '12345'
      assert_flash :error, /This is not a valid postcode/
    end
  end

end
