require 'test_helper'

class HolidayTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Holiday.new.valid?
  end
end
