require 'test_helper'

class SubCastTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SubCast.new.valid?
  end
end
