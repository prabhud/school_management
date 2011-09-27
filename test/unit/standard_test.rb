require 'test_helper'

class StandardTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Standard.new.valid?
  end
end
