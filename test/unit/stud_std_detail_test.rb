require 'test_helper'

class StudStdDetailTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert StudStdDetail.new.valid?
  end
end
