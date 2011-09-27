require 'test_helper'

class StudPreScDetailTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert StudPreScDetail.new.valid?
  end
end
