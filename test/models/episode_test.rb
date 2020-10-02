require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase

  test "Should not allow duplicate episode number" do
    Episode.create(number: 1)
    episode = Episode.new(number: 1)
    assert_not episode.save, "Saved a duplicate Episode number"
  end

end
