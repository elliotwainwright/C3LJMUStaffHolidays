require 'test_helper'

class HolidayRequestTests < ActiveSupport::TestCase

  def new_holiday(attributes = {})
      attributes[:user_id] ||= 2
      attributes[:Number_of_days] ||= '3'
      attributes[:date_from] ||= '12/12/2012'
      attributes[:date_to] ||= '01/01/2013'
      holiday = User.new(attributes)
      holiday
  end
   
  def test_holiday_should_have_one_id
      assert_equal 10, holidays(:one).id
  end
  
  def test_holiday_should_not_be_approved 
      assert_equal false, holidays(:one).approved
  end
  
  def test_holiday_should_be_approved 
      assert_equal true, holidays(:two).approved
  end

  def test_holiday_should_have_number_of_days
      assert_match 'number_of_days', holidays(:one).comments
  end
    
  def date_from_must_exist
      assert new_holiday(:date_from => '').errors.on(:date_from)
  end
  
  def date_to_must_exist
      assert new_holiday(:date_to => '').errors.on(:date_to)
  end
   
end

