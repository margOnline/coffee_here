require 'test_helper'

class MainControllerTest < ActionController::TestCase
  should "get index" do
    get :index
    assert_response :success
  end

  should 'return a list of venues' do

  end

end
