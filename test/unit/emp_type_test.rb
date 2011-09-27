require 'test_helper'

class EmpTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert EmpType.new.valid?
  end
end
