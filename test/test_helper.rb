ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def assert_assigns(key, expected_value=nil)
    actual_value = assigns(key)
    if expected_value
      assert_equal expected_value, actual_value, %{
        Expected `assigns(:#{key})` to be `#{expected_value.inspect}`,
        but it was: #{actual_value.inspect}
      }.squish!
    else
      assert_not_nil actual_value,
        "Expected `assigns(:#{key})` to be set, but it was nil"
    end
  end

  def assert_flash(type, expected_value=nil)
    expected_types = [:notice, :alert, :error]
    unless expected_types.include?(type)
      raise 'assert_flash: `type` should be one of: ' +
        expected_types.map { |type| ":#{type}" }.join(', ') and return
    end

    if expected_value.present?
      assert_match expected_value, flash[type]
    else
      assert flash[type].present?,
        "Expected `flash[:#{type}]` to be present, but it was blank"
    end

    (expected_types - [type]).each do |other_type|
      assert flash[other_type].blank?, %{
        Expected `flash[:#{other_type}]` to be blank, but it was:
        #{flash[other_type]}
      }.squish!
    end
  end
end
