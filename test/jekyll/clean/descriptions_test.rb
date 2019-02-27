require "test_helper"

class Jekyll::Clean::DescriptionsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Jekyll::Clean::Descriptions::VERSION
  end
end
