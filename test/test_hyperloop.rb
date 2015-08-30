
require 'minitest_helper'

class TestHyperloop < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Hyperloop::VERSION
  end

  def test_it_does_something_useful
    assert false
  end

  def test_extension_methods_are_present
    ["test"].each do |method_name|
        assert Hyperloop.respond_to?(method_name)
    end
  end
end
