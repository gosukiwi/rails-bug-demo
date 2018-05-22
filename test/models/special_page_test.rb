require 'test_helper'

class SpecialPageTest < ActiveSupport::TestCase
  test "it skips validation" do
    SpecialPage.create!

    assert_equal 1, SpecialPage.count
  end
end
